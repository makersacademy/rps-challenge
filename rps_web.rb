require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'


class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:Player_1])
    computer = Computer.new
    $game = Game.new(player_1, computer.name)
    redirect :play
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
