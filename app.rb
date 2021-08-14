require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  configure:development do 
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    # 'Lets play Rock Paper Scissors!'
    erb :index
  end

  post '/welcome' do
    session[:player] = params[:player]
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    erb :game
  end


  run! if app_file == $0
end