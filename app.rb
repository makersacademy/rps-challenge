require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:Player1_Name])
    player2 = Player.new(Game::COMPUTER_NAME)
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  post '/multiplayer' do
    player1 = Player.new(params[:Player1_Name])
    player2 = Player.new(params[:Player2_Name])
    @game = Game.create(player1, player2, true)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/move' do
    @game = Game.instance
    @game.current_turn.make_move(params[:move])
    redirect '/game-over' if @game.game_over?
    redirect '/switch-turns'
  end

  get '/switch-turns' do
    @game = Game.instance
    @game.switch_turns
    redirect '/play' if @game.multiplayer  
    @game.make_computer_move
    redirect '/game-over'
  end

  get '/game-over' do
    @game = Game.instance
    @game.finish_game
    erb :game_over
  end
end
