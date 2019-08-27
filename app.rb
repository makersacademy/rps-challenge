require 'sinatra/base'
require './computer.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    # 'Welcome to Rock Paper Scissors!'
    erb(:name)
  end

  post '/' do
    @player1 = params[:player1]
    redirect '/play'
  end

  post '/play' do
    @player1 = params[:player1]
    erb(:play)
  end

  post '/rock' do
    @choice = 'Rock'
    @computer_choice = (Computer.new).computer_choice
    erb(:option)
  end

  post '/paper' do
    @choice = 'Paper'
    @computer_choice = (Computer.new).computer_choice
    erb(:option)
  end

  post '/scissors' do
    @choice = 'Scissors'
    @computer_choice = (Computer.new).computer_choice
    erb(:option)
  end

 run! if app_file == $0
end
