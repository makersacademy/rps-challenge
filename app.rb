require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:playerName]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/weapon' do
    session[:player_weapon] = params[:weapon]
    redirect '/fight'
  end

  get '/fight' do
    @player = session[:player]
    @weapon = session[:player_weapon].to_sym
    erb(@weapon)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
