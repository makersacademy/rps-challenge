require 'sinatra/base'

class Rps < Sinatra::Base
  # get '/' do
  # 'Testing infrastructure working!'
  # end

  enable :sessions
  set :session_secret, "super secret"

  get '/' do
      erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect'/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:play)
  end

  run! if app_file == $0
end
