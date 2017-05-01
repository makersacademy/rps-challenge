require "sinatra/base"
require "./lib/game"

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    @player_1_name = params[:player_1_name]
    erb :names
  end

  get '/play' do
    p params
    player_1 = Player.new(params[:player_1_name])
    erb :play
  end


end
