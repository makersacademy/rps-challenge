require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/make_choice' do
    @game = $game
    @game.player.make_choice(params[:choice])
    @game.computer.make_choice
    @game.get_result
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
