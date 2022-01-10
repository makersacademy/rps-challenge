require 'sinatra/base'
require 'sinatra/reloader'

class RPS_Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/RPS' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player_choice]
    erb(:rps)
  end

  run! if app_file == $0
end