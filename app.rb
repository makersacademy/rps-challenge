require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_1_name])
    cpu_player = Player.new(params[:player_2_name])
    $game = Game.new(player_1, cpu_player)
    erb :names
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rock' do
    @game = $game
    @game.player_1.chooses(:rock)
    @game.cpu_player.random_choice
    erb :rock
  end

  post '/paper' do
    erb :paper
  end

  post '/scissors' do
    erb :scissors
  end

run! if app_file == $0
end
