require 'sinatra/base'
require './lib/player.rb'

class Play < Sinatra::Base
  enable :player

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name, :player_move])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/game' do
    @computer_move = $player.computer_move
    @player_move = $player.move
    @player_name = $player.name
    @result = $player.result
    erb :game
  end

  run! if app_file == $0
end
