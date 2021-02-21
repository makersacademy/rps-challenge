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
    redirect('/outcome')
  end

  get '/outcome' do
    @your_move = session[:move]
    computer = Computer.new
    @computer_move = computer.move
    erb :outcome
  end

  # if I have a game class, it would calculate the winner and
  # print the string.
  # it needs a method that takes 2 arguments - the computer
  # move and the player move.
  # Will I be able to access these variables in the new class
  # create a new instance of game in the controller. Call the
  # outcome method on the new instance.


end
