require 'sinatra/base'

class Rps < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
  redirect '/game'
  end

  get '/game' do
     @player_name = session[:player_name]
  erb :game
  end

  run! if app_file == $0
end
