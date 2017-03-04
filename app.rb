$VERBOSE=nil

require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new-game' do
    $game = Game.new(Player.new(params[:name]))
    erb :new_game
  end

  post '/result' do
    @option = params[:option]
    $game.player.choose_option(params[:option])
    @random_option = $game.play
    erb :result
  end

  run! if app_file == $0

end
