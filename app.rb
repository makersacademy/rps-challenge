require 'sinatra/base'
require './lib/player'
require './lib/rps_game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
 end

 post '/game' do
   $player_input = Rps_game.new(params[:player_input])
   redirect '/players'
 end

  get '/players' do
    @rps_selector = $player_input.rps_selector
    @player_input = $player_input.choice
    @referee = $player_input.referee
    erb :players
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
