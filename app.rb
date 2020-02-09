require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end