require 'sinatra/base'
require_relative "./lib/player"
class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    erb :names
    redirect :game
  end

  get '/game' do
    @player_1 = $player_1
    erb :game
  end

  get '/attack' do
    @player_1 = $player_1
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
