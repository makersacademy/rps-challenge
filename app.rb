require 'sinatra/base'
require_relative 'lib/player'

class RpsApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/names' do
    erb :names
  end

  post '/play' do
    $player_name = Player.new(params[:player_name])
    erb :play
  end

end
