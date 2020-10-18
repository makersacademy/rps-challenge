require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    @computer = 'Computer'
    erb(:play)
  end

  get '/battle' do
    session[:player_choice] = params[:player_choice]
    @player_choice = session[:player_choice]
    @player_name = session[:player_name]
    erb(:battle)
    redirect '/play'
  end
  run! if app_file == $0
end
