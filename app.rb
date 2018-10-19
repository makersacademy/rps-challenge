require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    #enter_name
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/enter_move'
  end

  get '/enter_move' do
    @player_1 = $player_1
    erb :enter_move
  end

  post '/move' do
    @player_1 = $player_1
    @player_1.move = (params[:name])
  end

  # start the server if ruby file executed directly
 run! if app_file == $0

end
