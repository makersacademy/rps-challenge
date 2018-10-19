require 'sinatra'
require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    erb:attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
