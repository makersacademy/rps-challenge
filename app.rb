require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end
  
  post '/play' do
    session[:player_one] = Player.new(params[:player_one])
    redirect '/play'
  end
  
  get '/play' do
    $player_one = session[:player_one]
    erb(:play)
  end

  post '/result' do
    session[:player1_move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player1_move = session[:player1_move]
    erb(:result)
  end

 
  run! if app_file == $0
end
