require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  set :sessions, true
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $player_1.name
    erb :play
  end

  post '/attack' do
    @player_1 = $player_1.name
    erb :attack
  end

end