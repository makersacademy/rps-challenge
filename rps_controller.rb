require 'sinatra/base'
require './lib/player'
class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    $player1 = Player.new(params[:player_name]).name
    $player2 = Player.new('Computer').name
    redirect '/play'
  end

  get '/play' do
    @player_name = $player1
    erb :play
  end

  post '/game' do
    $action = params[:weapon]
    p $action
    redirect '/game'
  end

  get '/game' do
    @action = $action
    @player_name = $player1
    erb :game
  end

  run! if app_file == $0
end
