require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player]
    @player_weapon = session[:weapon]
    erb(:play)
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    redirect '/play'
  end

   run! if app_file == $0

end
