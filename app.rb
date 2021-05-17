require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'computer_move'
require_relative 'winner'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello! Welcome to Rock, Paper, Scissors!"
    "Please enter your name below to begin"
    erb :index
  end

  post '/player_name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do 
    @player_1 = session[:player_1]
    erb :play
  end

  get '/rock' do 
    @computer_move = computer_move
    #"You played rock, and the computer played #{computer_move}!"
    #"You Win" if computer_move == 'scissors'
    :rock
  end

  get '/paper' do
    @computer_move = computer_move
    "You played paper, and the computer played #{computer_move}!"
  end

  get '/scissors' do 
    @computer_move = computer_move
    "You played scissors, the computer played #{computer_move}!"

  end



  run! if app_file == $0

end 
