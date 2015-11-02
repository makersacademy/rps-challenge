require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/computer'
require_relative '../lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    $computer = Computer.new("Computer")
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    @computer_name = $computer.name
    erb :play
  end

  post '/choose' do
    $shape = params[:shape]
    redirect '/result'
  end

  get '/result' do
    @player_name = $player.name
    @computer_name = $computer.name
    @player_shape = $shape
    @computer_shape = $computer.random_choice
    @game = Game.new
    erb @game.result(@player_shape, @computer_shape)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end