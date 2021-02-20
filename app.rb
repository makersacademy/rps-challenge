require 'sinatra'

class RockPaperScissors < Sinatra::Base
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
       @player2_move = ["rock", "paper", "scissors"].sample
     end
     if @player2_move == "rock" && @player_move == "paper"
       @result = "You Win"
     elsif @player2_move == "rock" && @player_move == "scissors"
       @result = "You Lose"
     elsif @player2_move == "paper" && @player_move == "rock"
       @result = "You Lose"
     elsif @player2_move == "paper" && @player_move == "scissors"
       @result = "You Win"
     elsif @player2_move == "scissors" && @player_move == "rock"
       @result = "You Win"
     elsif @player2_move == "scissors" && @player_move == "paper"
       @result = "You Lose"
     else
       @result = "Draw"
     end
     erb :result
   end
end
