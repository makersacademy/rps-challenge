require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :login
  end

  post '/login' do
    p1 = Player.new params[:player_name]
    p2 = Computer.new
    $game = Game.new(p1, p2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choose' do
    $game.p1_choose(params[:choice].to_sym)
    $game.p2_choose
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb @game.victor
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
