require 'sinatra/base'
require './lib/player'
require './lib/computer_player'

class Rps < Sinatra::Base
  get '/' do
    erb :start
  end

  get '/name' do
    erb :name
  end

  post '/set_name' do
    $player = Player.new(params[:player_name])
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    @player = $player
    erb :choose
  end

  post '/set_weapon' do
    @player = $player
    @player.add_weapon params[:weapon]
    redirect '/fight'
  end

  get '/fight' do
    @player = $player
    @computer_player = ComputerPlayer.new
    erb :fight
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
