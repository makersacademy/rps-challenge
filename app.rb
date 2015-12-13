require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    $player = Player.new(params[:player_name])
    @player = $player
    erb(:play)
  end

  post '/result' do
    p params
    @player = $player
    @player.choose(params[:weapon])
    erb(:result)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
