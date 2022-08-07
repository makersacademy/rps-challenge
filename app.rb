require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/round'
require './lib/game'
# require './database_connection_setup'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    $game = Game.new
    erb :form
  end

  post '/play' do
    session[:player] = params[:player]
    $player = Player.new(params[:player])
    @player_name = $player.name
    @game = $game
    erb :play
  end

  post '/play_again' do
    # session[:player] = params[:player]
    # $player = Player.new(params[:player])
    # @player_name = $player.name
    @game = $game
    erb :play_again
    
  end

  post '/battle' do
    @player = $player
    @player_weapon = @player.select_weapon(params[:player_choice])
    round = Round.new(@player_weapon, $game)
    @message = round.engine
    @computer_weapon = round.computer_weapon
    erb :battle
  end

# Start the server if this file is executed directly (don't change the line below)
  run! if app_file == $0
end
