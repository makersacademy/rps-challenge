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

  post '/name' do
    p params
    session[:player] = params[:player]
    $player = Player.new(params[:player])
    redirect '/play'
  end

  post '/name_play_again' do
    p params
    session[:player] = params[:player]
    $player = Player.new(params[:player])
    redirect '/play_again'
  end

  get '/play' do
    @player_name = $player.name
    #tried to get the welcome message into name... but no luck
    erb :play
  end

  get '/play_again' do
    @player_name = $player.name
    #tried to get the welcome message into name... but no luck
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

  # run the model in the controller. Take args such as computer (contained in model)
  # player choice (a param), and use them with the if/else statement in the engine
  # to return a winner which can be interpolated in the view

# Start the server if this file is executed directly (don't change the line below)
  run! if app_file == $0
end
