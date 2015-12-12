require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player.name
    @player_choice = session[:player_choice]
    erb :play
  end

  post '/choice' do
    #player.choice = params[:player_choice]
    session[:player_choice] = params[:player_choice]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
