require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
     erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  run! if app_file == $0

end
