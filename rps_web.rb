require 'sinatra/base'
require 'player'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect '/game'
  end

  get '/game' do
    @player_name = (Player.instance).name
    erb :game
  end

  post '/weapon' do
    @game = Game.create(params[:player_weapon])
    redirect '/showdown'
  end

  get '/showdown' do
    @player_weapon = (Game.instance).weapon
    erb :showdown
  end

  # start the server if ruby file executed directly
  run! if app_file ==$0

end
