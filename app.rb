require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  run! if app_file == $0
end
