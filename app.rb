require 'sinatra/base'
require_relative 'lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/' do
    @name = params[:player]
    $new_game = Game.new(@name)
    @player = $new_game.player.name
    @computer = $new_game.computer.name
    erb(:game)
  end

  post '/game' do
    @player_choice = params[:choice]
    @computer_choice = $new_game.computer.comp_rand
    erb(:winner)
  end

  run! if app_file == $0
end
