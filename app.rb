require 'sinatra/base'
require_relative './lib/computer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]

    # new instance of computer
    # call move method on that instance

    # store the session move in instance variable
    # Get the computer's move

    redirect('/outcome')
  end

  get '/outcome' do
    @your_move = session[:move]
    

    # erb :outcome
    # include a play again button
    # redriect to play
  end




end
