require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  post '/weapon' do
    session[:weapons] = params[:weapons]
    redirect '/battle'
  end

  get '/battle' do
    erb :battle
  end



  run if app_file == $0
end
