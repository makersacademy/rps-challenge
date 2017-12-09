require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  get '/name-select' do
    erb(:names)
  end

  get '/play' do
    p session[:player_name]
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/names' do
    p params
    session[:player_name] = params[:player_name]
    p session[:player_name]
    redirect '/play'
  end



  run! if app_file == $0
end
