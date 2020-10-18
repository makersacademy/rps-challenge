require 'sinatra'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :homepage
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/outcome' do  
    @player_choice  = params[:options]
    erb :outcome
  end

  run! if app_file == $0

end
