require 'sinatra/base'
require './lib/computer'
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
    session[:weapon] = params[:weapon]
    @weapon = session[:weapon]
    @computer = $computer.computer_weapon
    erb :game
  end
  
  run! if app_file == $0
end
