require 'sinatra/base'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do 
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/select' do
    @player = $player
    @player.selection = params[:player_selection]
    redirect '/battle'
  end

  get '/battle' do
    @player = $player
    erb :battle
  end

  get '/result' do
    @player = $player
    @player2 = Player.new
    erb :result
  end

  run! if app_file == $0
end
