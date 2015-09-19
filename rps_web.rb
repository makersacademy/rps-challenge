require 'sinatra/base'

class Rps_challenge < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/new_game'
  end

  get '/new_game' do
    @name = session[:name]
    erb :new_game
  end

  post '/result' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
