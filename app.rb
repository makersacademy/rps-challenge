require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    @user_name = params[:user_name].capitalize
    redirect '/round'
  end

  post '/round' do
    @user_name = params[:user_name].capitalize
    erb :round
  end

  post '/result' do
    @user_options = params[:options]
    @game_choice = ["Rock", "Paper", "Scissors"].sample
    if @game_choice == "Rock" && @user_options == "Rock" || @game_choice == "Paper" && @user_options == "Paper"|| @game_choice == "Scissors" && @user_options == "Scissors"
      @result = "It is a draw!"
    elsif @game_choice == "Paper" && @user_options == "Rock" || @game_choice == "Rock" && @user_options == "Scissors" || @game_choice == "Scissors" && @user_options == "Paper"
      @result = "You have been beaten by the game"
    else
      @result = "You won!"
    end
    erb :result
  end

  get '/round' do
    erb :round
  end

  run! if app_file == $0

end
