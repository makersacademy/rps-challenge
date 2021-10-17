require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    computer = Player.new("Computer")
    $game = Game.new(player1, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/weapon_choice' do
    weapon = params[:player1_weapon]
    $game.player1.choose_weapon(weapon)
    $game.computer_random_weapon
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    erb :outcome
  end

  run! if app_file == $0

end
