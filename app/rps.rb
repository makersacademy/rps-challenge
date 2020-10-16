require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/start_game' do
    session[:player1] = params[:player1]
     redirect '/play'
  end

  get '/play' do
    @name = session[:player1]
    erb :welcome_player
  end

    run! if app_file == $0
end