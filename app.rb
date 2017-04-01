
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name] # Saving name in session.
    redirect '/play' # Redirecting to play.
  end

  get '/play' do
    @player_name = session[:player_name] #Assinging session name to variable.
    erb :play # Referrin to play document.
  end

  get '/rock' do
    @player_name = session[:player_name]
    erb :rock
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
