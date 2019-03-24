
require 'sinatra/base'

class RPS < Sinatra::Base;
  configure(:development) { set :session_secret, "something" }
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    # session[:id] = params[:id]
    # p session[:id]
    erb :play
  end

  get '/choice-paper' do
    session[:pick] = "paper"
    redirect '/results'
  end

  get '/choice-rock' do
    session[:pick] = "rock"
    redirect '/results'
  end

  get '/choice-scissors' do
    session[:pick] = "scissors"
    redirect '/results'
  end

  get '/results' do
    @pick = session[:pick]
    @computer = compchoice
    @winner = decider

    def compchoice
      choosy = ["Rock", "Paper", "Scissors"].sample
      return choosy
    end

    def decider
      if (@pick == "Rock" && @computer == "Scissors") ||
        (@pick == "Scissors" && @computer == "Paper") ||
        (@pick == "Paper" && @computer == "Rock")
          return @player_1_name
      elsif (@computer == "Rock" && @pick == "Scissors") ||
        (@computer == "Scissors" && @pick == "Paper") ||
        (@computer == "Paper" && @pick == "Rock")
          return "Computer"
      elsif (@computer == "Rock" && @pick == "Rock") ||
        (@computer == "Scissors" && @pick == "Scissors") ||
        (@computer == "Paper" && @pick == "Paper")
          return "It's a Draw!"
      end
    end
    erb :results
  end
end
