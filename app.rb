require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/names' do
    #takes name entered, & stores it in the session
    #then redirects to /play
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    #takes name previously stored in session, and passes it to variable
    @player_1_name = session[:player_1_name]
    erb :play
  end

end