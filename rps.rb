require 'sinatra/base'
require './lib/user'
require './lib/evaluator'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    user = User.new(params[:credentials])
    @game = Game.create(user)
    redirect '/game'
  end

  get '/game' do
    @game = Game.instance
    @username = @game.user.name
    erb(:start)
  end

  get '/attack' do
    @game = Game.instance
    @username = @game.user.name
    @your_weapon = params[:weapon]
    @game.attack(@your_weapon)
    erb(:attack)
  end

  get'/response' do
    @game = Game.instance
    @game.receive_attack
    @evaluator = Evaluator.create(@game)
    @evaluator.evaluate
    erb(:response)
  end


  run! if app_file == $0
end


