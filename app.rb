require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    p params
    $player_name = Player.new(params[:player_name])
    p params[:player_name]
    redirect '/choose_your_weapon'
  end

  get '/choose_your_weapon' do
    @player_name = $player_name.name.upcase
    erb :play
  end

  post '/game' do
    p params
    session[:value] = params[:weapon]
    redirect '/first_round'
  end

  get '/first_round' do
    @weapon = session[:value]
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
