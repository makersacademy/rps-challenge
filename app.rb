require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/play_rps'
  end

  get '/play_rps' do
    @player_name = session[:player_name]
    erb :play_rps
  end

run! if app_file == $0
end
