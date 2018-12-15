require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/game'
  end

  get '/game' do
    @player_1 = session[:player_1_name]
    erb :game
  end

  get '/attack' do
    session[:player_1_attack] = params[:player_1_attack]
    redirect '/results'
  end

  get '/results' do
    @player_1_attack = session[:player_1_attack]
    erb :results
  end

  run! if app_file == $0

end
