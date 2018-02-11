require 'sinatra/base'
require './lib/human_player'
require './lib/computer_player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  before(/(\/game)\/?\w*/) do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/name' do
    human_player = HumanPlayer.new(params[:name])
    computer_player = ComputerPlayer.new(Game::DEFAULT_MOVE_LIST)
    Game.create(human_player, computer_player)
    redirect to '/game'
  end

  get '/game' do
    erb :game
  end

  post '/play' do
    player_1_move = params[:rockpaperscissors]
    player_2_move = Game.current_game.player_2.move
    Game.current_game.result(player_1_move, player_2_move)
    results = Game.current_game.results
    redirect to "/game/#{results[:result]}"
  end

  get '/game/win' do
    erb :win
  end

  get '/game/draw' do
    erb :draw
  end

  get '/game/loss' do
    erb :loss
  end
end
