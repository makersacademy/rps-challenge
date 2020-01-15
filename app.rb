require 'sinatra/base'
require './lib/player.rb'

class Play < Sinatra::Base
  enable :player

  get '/' do
    erb :index
  end

  post '/name' do
    $name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $name
    erb :play
  end

  post '/game' do
    $player = Player.new($name, params[:player_move])
    @computer_move = $player.computer_move
    @player_move = $player.move
    @player_name = $name
    @result = $player.result
    erb :game
  end

  run! if app_file == $0
end
