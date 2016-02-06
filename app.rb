require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:Player_1_Name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.players
    erb(:play)
  end

  get '/newgame' do
    @player_1 = $game.players
    erb(:newgame)
  end

  get '/rock' do
    @player_1 = $game.players
    @player_1.choice = "Rock"
    $game.pick_cpu_hand
    redirect(:end)
  end

  get '/end' do
    @result = $game.result
    erb(:end)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
