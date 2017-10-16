require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.create(Player.new(params[:player_1]))
    # session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player1 = Game.instance.player_1.name
    erb(:play)
  end

  post '/result' do
    session[:choice] = params[:choice]
    redirect '/game-over'
  end

  get '/game-over' do
    # @choice = params[:choice]
    @result = Game.instance.result(session[:choice])

    erb(:result)
  end
end
