require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions


  get '/' do
    'Welcome to Rock Paper Scissors'
    erb(:index)
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/result' do
    @player_name = session[:player_name]


  end

  run! if app_file == $0
end
