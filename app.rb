require 'sinatra/base'

class Rockpaperscissors < Sinatra::Base
  # get '/' do
  #   'Testing infrastructure working!'
  # end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/result' do
    @player_name = session[:player_name]
    erb :result
  end

  run! if app_file == $0
end
