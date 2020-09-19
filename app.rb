require 'sinatra/base'


class RPS < Sinatra::Base

  enable :sessions
  run! if app_file == $0

  get '/' do
    session[:player_name] = params[:player_name]
    erb(:index)
  end

  post '/name' do
    @player_name = session[:player_name]
    session[:computer] = params[:computer]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @computer = session[:computer]
    erb(:play)
  end

  post '/play' do
    @player_name = session[:player_name]
    @computer = session[:computer]
    redirect '/game_running'
  end

  get '/game_running' do
    @player = session[:player]
    @computer = session[:computer]
    erb(:game_running)
  end

end
