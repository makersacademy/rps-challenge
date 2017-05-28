require 'sinatra'

class RPS < Sinatra::Application

  enable :sessions
  set :session_secret, 'XPTO'

  get '/' do
    erb :name_form
  end

  post '/game-setup' do
    @player_name = params[:player_name]
    session[:player_name] = @player_name
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  
end
