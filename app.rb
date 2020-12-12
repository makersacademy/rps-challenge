require 'sinatra/base'


class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do #box appears and stored in '/' page
    session[:player_name] = params[:player_name]
    redirect '/namepage'
    redirect '/play'
  end

  get '/namepage' do #player_name is shown in this page
    @player_name = session[:player_name]
    erb :namepage
  end

  get '/play' do #needs to take a session with player_name stored
    @player_name = session[:player_name]
    erb :play
  end

  run! if app_file == $0
end
