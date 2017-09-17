require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
# get '/' do
#   "We have green lights!"
# end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name.name
    erb :play
  end

  post '/weapon' do
    @weapon = "Scissors"
    erb :weapon
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
