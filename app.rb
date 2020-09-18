require 'sinatra/base'


class RPS < Sinatra::Base

  enable :sessions
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/play' do
    @player_name = session[:player_name]
    redirect '/game_running'
  end

  get '/game_running' do
    @player_name = session[:player_name]
    erb(:game_running)
  end

end
