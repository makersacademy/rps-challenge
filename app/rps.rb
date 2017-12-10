require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  get '/name-select' do
    erb(:names)
  end

  get '/play' do
    @player_name = session[:player_name]
    @choice = session[:choice]
    erb(:play)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/choice' do
    p params
    session[:choice] = params[:choice]
    redirect '/play'
  end

  run! if app_file == $0
end
