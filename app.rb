require "sinatra/base"
require "./lib/game"

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_1_name])
    cpu_player = Player.new(params[:player_2_name])
    @game = Game.new(player_1, cpu_player)
    erb :names
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    p params
    $game = @game
    $player = @player
    item = params[:rock]
    @game.play
    erb :result
  end

run! if app_file == $0
end
