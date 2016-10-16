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
    puts @player_name
    @player_name = $player.name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
