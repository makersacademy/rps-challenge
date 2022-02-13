require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

 enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/player'
  end

  get '/player' do
    @player = session[:player_name]
  erb :player
  end

  run! if app_file == $0


end
