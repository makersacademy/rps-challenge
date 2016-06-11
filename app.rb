require 'sinatra/base'

class RPS < Sinatra::Base

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
    # session[:weapon] = params[:weapon]
    erb :play
  end

  post '/chosen_weapon' do
    @player_name = session[:player_name]
    session[:weapon] = params[:weapon]
    redirect '/fight'
  end

  get '/fight' do
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    erb :fight
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
