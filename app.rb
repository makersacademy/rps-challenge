require 'sinatra/base'

class App < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/choose_object' do
    session[:RPSRadio] = params[:RPSRadio]
    redirect '/play_object'
  end

  get '/play_object' do
    @player_1_weapon = session[:RPSRadio]
    erb :play_weapon
  end

  post '/AI_turn' do
    @player_1_weapon = session[:RPSRadio]
    @player_1_name = session[:player_1_name]
    erb :AI_turn
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
