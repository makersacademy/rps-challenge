require 'sinatra'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end


   get '/play' do
     @player_name = session[:player_name]
     erb :play
   end

   post '/move' do
     session[:player_move] = params[:player_move]
     redirect '/result'
   end

   get '/result' do
     @player_move = session[:player_move]
     @bot_choice = ["Rock", "Paper", "Scissors"].sample
     if @bot_choice == "Rock" && @player_move == "paper"
       @result = "You Win"
     elsif @bot_choice == "Rock" && @player_move == "scissors"
       @result = "You Lose"
     elsif @bot_choice == "Paper" && @player_move == "rock"
       @result = "You Lose"
     elsif @bot_choice == "Paper" && @player_move == "scissors"
       @result = "You Win"
     elsif @bot_choice == "Scissors" && @player_move == "rock"
       @result = "You Win"
     elsif @bot_choice == "Scissors" && @player_move == "paper"
       @result = "You Lose"
     else
       @result = "Draw"
     end
     erb :result
   end
end
