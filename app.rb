require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    player_one = Player.new(params[:player_one])
    player_two = Player.new(params[:player_two])
    @game = Game.create(player_one, player_two)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @current_player = @game.player
    @game.increase_turn
    erb :play
  end

  post '/choice' do
    @choice = @game.player.move(params[:choice])
    @turns = @game.turns
    erb :choice
  end

  post '/switch_turns' do
    @game.switch_turns(@game.player)
    redirect '/play'
  end

  get '/computer_choice' do
    computer_choice = ["Rock", "Paper", "Scissors"].sample
    @computer_choice = @game.player_two_move(computer_choice)
    erb :computer_choice
  end

  post '/winner' do
    @winner = @game.set_winner
    erb :winner
  end

end
