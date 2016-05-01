require 'sinatra/base'

class MyApp < Sinatra::Base


    enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
  session[:player_name] = params[:player_name]
    redirect '/play'

  end

  get '/play' do
  @player_name = session[:player_name]
  erb :play

  end
  post '/result' do
    @player_name = session[:player_name]
    session[:rps] = params[:rps]
    @hand_selection = session[:rps]
    redirect '/rps-results'
  end

  get '/rps-results' do
    @player_name = session[:player_name]
    @hand_selection = session[:rps]
    erb :game

  end


  run! if app_file == $0
end