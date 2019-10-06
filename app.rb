require 'sinatra/base'
require './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    player1 = Player.new(params[:player1])
    @game = Game.create(player1)
    redirect '/play'
  end

  get '/play' do
    session[:moves] = params[:moves]
    @game = Game.instance
    erb :play
  end

  post '/winner' do
    @move = params[:moves]
    @game = Game.instance
    @game.shoot
    erb :winner
  end
end
