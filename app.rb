require 'sinatra/base'
require_relative './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1_name])
    p session[:player_1]
    redirect '/game'
  end

  get '/game' do
    @player_1 = session[:player_1]
    erb :game
  end

  post '/attack' do
    session[:player_1_attack] = params[:move]
    redirect '/results'
  end

  get '/results' do
    @player_1_attack = session[:player_1_attack]
    erb :results
  end

  run! if app_file == $0

end
