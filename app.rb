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
    @player_choice = session[:player_choice]
    erb :play
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
