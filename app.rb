require 'sinatra/base'
require_relative 'lib/player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end
end
