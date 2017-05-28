require 'sinatra'

class RPS < Sinatra::Application

  enable :sessions
  set :session_secret, 'XPTO'

  get '/' do
    erb :name_form
  end

  post '/game' do
    @player_name = params[:player_name]
    session[:player_name] = @player_name
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  
end
