require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_one]
    @game = Game.create(@player_name)
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
    @computer_choice = @game.player_two_move(["Rock", "Paper", "Scissors"].sample)
    erb :computer_choice
  end

  get '/winner' do
    @winner = @game.winner
    erb :winner
  end

end
