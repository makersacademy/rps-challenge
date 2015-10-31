require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:username])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    @game.player.player_choice((params[:selection]).to_sym)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the game will choose a random option
# a winner will be declared
