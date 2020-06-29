require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $rps_input = params[:RPS_input]
    $game = Game.new(params[:name],"computer")
    redirect '/game'
  end

  get '/game' do
    @RPS_input = $rps_input
    @game = $game
    erb :game
  end

  post '/action' do
    $rps_input = params[:RPS_input]
    redirect '/game'
  end

end
# rackup -p 4567  NOT SHOTGUN!!!
