require 'sinatra/base'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:Player_name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player = $player
    @computer = $computer
    erb :play
  end

  post '/play' do
    $player.choice = params[:Player_choice]
    redirect '/attack'
  end

  get '/attack' do
    @player = $player
    erb :attack
  end

  run! if app_file == $0
end
