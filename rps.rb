require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/pick' do
    @picks = params[:picks]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
