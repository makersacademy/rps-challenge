require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    erb :play
  end

  run if app_file == $0
end
