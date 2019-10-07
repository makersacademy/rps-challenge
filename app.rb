require 'sinatra/base'
require './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    session[:player1] = Player.new(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  post '/winner' do
    player1 = session[:player1]
    move = params[:moves]
    @game = Game.create(player1, move)
    @shoot = @game.shoot
    erb :winner
  end

  run! if app_file == $0
end
