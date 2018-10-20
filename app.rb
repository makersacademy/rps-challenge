require 'sinatra/base'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/choice' do
    @player = $player
    @player.weapon(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @player_name = $player.name
    @player_choice = @player.choice
    @computer = $computer
    @computer_choice = @computer.weapon
    erb :result
  end

  run! if app_file == $0
end
