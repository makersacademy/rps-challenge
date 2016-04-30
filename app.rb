require 'sinatra/base'

class RPSLS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    session[:choice] = params[:choice]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
