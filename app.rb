require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RPSApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    player = Player.new('Ben')
    game = Game.new(player)
    game.player_weapon('rock')
    game.run_game
  end

  run! if app_file == $0
end