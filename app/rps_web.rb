require 'sinatra'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPSWeb < Sinatra::Application

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Computer.new
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  post '/weapons' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.weapon_choice(params[:weapon])
    @player_2.weapon_choice
    @game = $game
    @result = @game.result
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @player_1 = $player_1
    @player_2 = $player_2
    @result = @game.result
    erb :result
  end

  post '/reset_game' do
    @game = $game
    @game.reset_game
    redirect params[:action] == "Reset Game" ? '/play' : '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
