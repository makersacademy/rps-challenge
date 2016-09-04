require 'sinatra/base'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  post '/fight' do
    @player_name = $player_name.choose_weapon(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    @player_name = $player_name
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
