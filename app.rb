require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class RockGame < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    Game.start_game(Player.new(params[:player_name]), Computer.new)
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

  get '/result' do
    erb Game.current_game.result(Game.current_game.player.weapon_choice(params[:player_choice]), Game.current_game.computer.weapon_choice)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
