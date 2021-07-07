require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/names' do
   erb :names
  end

  post '/play' do
    session[:name] = params[:name]
    @name = session[:name]
    erb :play
  end


  get '/rock' do
    @computer_choice = ["rock","paper","scissors"].sample
    if @computer_choice == "rock"
      erb :rock_wins
    else
      erb :rock_loses
    end
  end

  get '/paper' do
    @computer_choice = ["rock","paper","scissors"].sample
    if @computer_choice == "paper"
      erb :paper_wins
    else
      erb :paper_loses
    end
  end

  get '/scissor' do
    @computer_choice = ["rock","paper","scissors"].sample
    if @computer_choice == "scissors"
      erb :scissor_wins
    else
      erb :scissor_loses
    end
  end
end
