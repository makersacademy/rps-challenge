require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  #enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    #session[:player_one] = params[:player_one]
    #session[:player_two] = params[:player_two]
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    erb :play
  end

  run if app_file == $0
end
