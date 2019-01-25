require 'sinatra/base'
require './models/player'
require './models/rps'
require './models/game'
require './models/cpu'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/welcome_message' do
    $player = Player.new(params[:name])
    @player = $player
    erb(:welcome_message)
  end

  get '/play' do
    erb(:play)
  end

  get '/winner' do
    @game = Game.new($player)
    @game.select_player_move(params[:moves])
    @game.select_cpu_move
    erb(:winner)
  end

end
