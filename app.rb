require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
  	erb :play
  end

  post '/choose' do
    @game = Game.new
    @game.player(params[:choice])
    erb @game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
