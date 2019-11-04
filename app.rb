require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # $player_1_name = Player.new(params[:player_1_name])
    @player_1_name = params[:player_1_name]
    erb :play
  end

  get '/play' do
    # @player_1_name = $player_1_name.name
    @player_1_name = params[:player_1_name]
    erb :play
  end

  get '/game' do
    # @player_1_name = $player_1_name.name
    @player_1_name = session[:player_1_name]
    erb :game
  end

  run! if app_file == $0
end
