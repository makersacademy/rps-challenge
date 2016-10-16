require 'sinatra/base'
require './lib/game'

class RockPaperScisors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player1] = params[:player1]
    redirect '/start-game'
  end

  get '/start-game' do
    @player1 = session[:player1]
    erb :start_game
  end

  get '/results' do
    game = Game.new
    @result = game.rock
    @player1 = session[:player1]
    erb :results
  end

end
