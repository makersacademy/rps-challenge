require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/game' do
    @player_weapon = $player.player_weapon(params[:weapon])
    @computer = $computer
    @computer.computer_weapon
    @result = @computer.result(@player_weapon, @computer.choose_weapon)

    erb :game
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
