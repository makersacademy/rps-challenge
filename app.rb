require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    player_1 = Player.new(params[:Player_1_Name])
    @player_1_name = player_1.name
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
