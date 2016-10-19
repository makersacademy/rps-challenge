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

  get '/rock' do
    game = Game.new
    @player1 = session[:player1]
    @comp_choice = game.comp
    @result = game.rock
    erb :rock
  end

  get '/paper' do
    game = Game.new
    @player1 = session[:player1]
    @comp_choice = game.comp
    @result = game.paper
    erb :paper
  end

end
