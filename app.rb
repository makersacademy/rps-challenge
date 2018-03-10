require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    @player_name = session[:name]
    erb :name
  end

  post '/result' do
    session[:choose] = params[:choose]
    @choose = session[:choose]
    "Reena choose #{@choose}"
  end

  run! if app_file == $0
end
