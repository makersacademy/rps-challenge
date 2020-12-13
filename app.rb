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
    $game = Game.new
    $game.new_player(params[:player_1_name])
    redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  get '/play' do
    $game.add_player_choice(params[:rps])
    erb :play
  end

  #establish server if file run directly
  run! if app_file == $0
end
