require 'sinatra/base'
require './lib/rock_paper_scissors.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p "*********"
    p params[:name1]
    session[:player1] = params[:name1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  post '/player_choice' do
    @game = Game.new
    @player_1_move = params[:choice]
    session[:player1] = @player_1_move
    session[:player2] = @game.player_2_choice
    @game.player_1_choice = @player_1_move
    session[:outcome] = @game.outcome
    redirect '/result'
  end

  get '/result' do
    @p1_weapon = session[:player1]
    @p2_weapon = session[:player2]
    @result = session[:outcome]
    erb :result
  end

end
