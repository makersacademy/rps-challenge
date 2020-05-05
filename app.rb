require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    p params
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    p params
    @player_1_name = session[:player_1_name]
    session[:player_1_choice] = params[:player_1_choice]
    erb :play
  end

  post '/resolve' do
    p params
    @player_1_name = session[:player_1_name]
    @player_1_choice = params[:player_1_choice]
    @computer_choice = ["Rock" , "Paper", "Scissors"].sample
    @result = winner(@player_1_choice, @computer_choice)
    erb :resolve
  end

  def winner(choice1, choice2)
    if choice1 == "Rock"
      return "it's a draw" if choice2 == "Rock"
      return 'you win' if choice2 == "Scissors"
      return 'you lose' if choice2 == "Paper"
    elsif choice1 == "Paper"
      return "it's a draw" if choice2 == "Paper"
      return 'you win' if choice2 == "Rock"
      return 'player 2 wins' if choice2 == "Scissors"
    elsif choice1 == "Scissors"
      return "it's a draw" if choice2 == "Scissors"
      return 'you win' if choice2 == "Paper"
      return 'you lose' if choice2 == "Rock"
    end
  end

  run! if app_file == $0
end
