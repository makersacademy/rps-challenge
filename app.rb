require 'sinatra/base'
require './lib/human_player'
require './lib/computer_player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  before '/game' do
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
    redirect to '/result'
  end

  get '/result' do
    erb :result
  end

end
