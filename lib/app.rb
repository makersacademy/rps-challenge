require 'sinatra/base'
require_relative 'rps_player'
require_relative 'rps_game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Player.new(params[:computer])
    @game = Game.new_game(player, computer)
    redirect '/play'
  end

  before do
    @game = Game.start
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
