require 'sinatra'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPSWeb < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/weapons' do
    @game = $game
    @game.player_1.weapon_choice(params[:weapon])
    @game.player_2.weapon_choice
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0

end
