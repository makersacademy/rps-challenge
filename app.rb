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
    erb :name
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/winner' do
    player_name = $player.name
    @player_name = $player.name
    player = Player.new(player_name)
    @weapon = player.select_weapon(params[:player_choice])
    weapon = @weapon
    game = Game.new(weapon)
    @message = game.engine
    # @game.result
    # @weapon = params[:player_choice]
    erb :winner
  end

  #run the model in the controller. Take args such as computer (contained in model)
  # player choice (a param), and use them with the if/else statement in the engine
  #to return a winner which can be interpolated in the view


# Start the server if this file is executed directly (don't change the line below)
  run! if app_file == $0
end
