require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  post '/selection' do
    p @Player_1_weapon = params[:action]
    #  play_game(weapon)
     redirect '/result'
  end

  get '/result' do
    @Player_1_weapon = params[:action]
    @player_1_name = $player_1.name
    @winner
    erb(:result)
  end

  #   @game = Game.new

  # start the server if ruby file executed directly
  run! if app_file == $0
end
