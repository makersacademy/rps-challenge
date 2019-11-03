require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb(:index)
  end

  post '/select' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post 'selection' do
    redirect('/result')
  end

  get '/result' do
    @selection = params[:selection]
    p @selection
    erb(:result)
  end

  run! if app_file == $0
end