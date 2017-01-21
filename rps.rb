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
    @player = session[:player_name]
    erb :play
  end

  post '/weapon_choice' do
    session[:weapon_choice] = params[:weapon_choice]
    redirect '/weapon_choice'
  end

  get '/weapon_choice' do
    @weapon_choice = session[:weapon_choice]
    erb :weapon_choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
