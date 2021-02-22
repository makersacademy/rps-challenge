require 'sinatra'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  game = Game.new
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end


   get '/play' do
     @player_name = session[:player_name]
     if !session[:player2_name].empty?
       @player2_name = session[:player2_name]
     else
       @player2_name = "RPSBot3000"
       session[:player2_name] = @player2_name
     end
     erb :play
   end

   post '/move' do
     session[:player_move] = params[:player_move]
     session[:player2_move] = params[:player2_move]
     redirect '/result'
   end

   get '/result' do
     @player_name = session[:player_name]
     @player2_name = session[:player2_name]
     @player_move = session[:player_move]
     @player2_move = session[:player2_move]
     if @player2_move == ""
       @player2_move = ["rock", "paper", "scissors", "spock", "lizard"].sample
     end
     game.moves(@player_move, @player2_move)
     @result = game.result
     erb :result
   end
end
