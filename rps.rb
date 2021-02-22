require 'sinatra/base'
require './models/player'
require './models/computer'
require './models/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
      erb :index
  end

  post '/named-player' do
    $player = Player.new(params[:player_name])
    redirect to('/play')
  end

  get '/play' do 
    @player_name = $player.name
    erb :play
  end
  
  post '/play' do
    redirect to('/result')
  end

  get '/result' do
    @player_move = (params[:player_move])
    Computer.new.ai_move
    erb :result
  end


  run! if app_file == $0
end