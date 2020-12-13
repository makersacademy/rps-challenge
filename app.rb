require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # $game = Game.new
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new("Computer")
    $game = Game.new(player_1, player_2)
    redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  get '/play' do
    $game.player_1.add_choice(params[:rps])
    $game.player_2.add_choice($game.random_choice)
    erb :play
  end

  #establish server if file run directly
  run! if app_file == $0
end
