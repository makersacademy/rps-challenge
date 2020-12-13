require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    p params
    redirect '/game'
  end

  get '/game' do
    @player = session[:player_name]
    erb :game
  end

  run! if app_file == $0

end
