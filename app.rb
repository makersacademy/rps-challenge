require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name])
    $computer = Player.new(params[:computer])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @computer = $computer.name
    erb :play
  end

  post '/player-attack' do
    session[:player_attack] = params[:player_attack]
    redirect '/player-move'
  end

  get '/player-move' do
    @player_attack = session[:player_attack]
    erb :player_move
  end

  # post '/computer_attack' do
  #   $computer = Computer.new(params[:computer])
  #   redirect '/computer_move'
  # end

  get '/computer_move' do
    @computer = $computer.move
    erb :computer_move
  end

  run! if app_file == $0

end
