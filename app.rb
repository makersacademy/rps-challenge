require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :start
  end

  get '/name' do
    erb :name
  end

  post '/set_name' do
    player_1 = Player.new params[:player_name]
    player_2 = ComputerPlayer.new
    $game = Game.new(player_1,player_2)
    redirect '/selection'
  end

  get '/selection' do
    @game = $game
    erb :selection
  end

  post '/set_weapon' do
    @game = $game
    @game.player_1.choose_weapon params[:weapon]
    @game.player_2.choose_weapon
    redirect '/fight'
  end

  get '/fight' do
    @game = $game
    @game.allocate_points
    erb :fight
  end

  post '/best_of_plus_2' do
    @game = $game
    @game.best_of_plus_2
    redirect '/selection'
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
