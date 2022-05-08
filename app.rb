require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :form
  end

  post '/play' do
    session[:player] = params[:player]
    $player = Player.new(params[:player])
    @player_name = $player.name
    erb :play
  end

  post '/play_again' do
    session[:player] = params[:player]
    $player = Player.new(params[:player])
    @player_name = $player.name
    erb :play_again
  end

  post '/battle' do
    @player = $player
    @player_weapon = @player.select_weapon(params[:player_choice])
    game = Game.new(@player_weapon)
    @message = game.engine
    @computer_weapon = game.computer_weapon
    erb :battle
  end

# Start the server if this file is executed directly (don't change the line below)
  run! if app_file == $0
end
