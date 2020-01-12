require 'sinatra/base'
require './lib/user'
require './lib/evaluator'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    $game = Game.new( User.new (params[:credentials]) )
    redirect '/game'
  end

  get '/game' do
    @username = $game.user.name
    erb(:start)
  end

  get '/attack' do
    @username = $game.user.name
    @your_weapon = params[:weapon]
    $game.attack(@your_weapon)
    erb(:attack)
  end

  get'/response' do
    $game.receive_attack
    $evaluator = Evaluator.new($game)
    $evaluator.evaluate
    erb(:response)
  end


  run! if app_file == $0
end


