require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    @game = Game.create(@player_one, @player_two)
    erb :play
  end

  before do
    @game = Game.instance
  end

  post '/choice' do
    @choice = @game.player_one_move(params[:choice])
    erb :choice
  end

  get '/computer_choice' do
    computer_choice = ["Rock", "Paper", "Scissors"].sample
    @computer_choice = @game.player_two_move(computer_choice)
    erb :computer_choice
  end

  get '/winner' do
    @winner = @game.winner
    erb :winner
  end

end
