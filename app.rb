require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/battle'
  end

  get '/battle' do
    @player_name = session[:player_name]
    erb :battle
  end

  run! if app_file == $0
end
