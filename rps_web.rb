require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect :play
  end

  get '/play' do
    @game = $game
    erb :play
  end

  run! if app_file == $0
end
