require 'sinatra/base'

class RPSApp < Sinatra::Base
  set :session_secret, 'makers'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/move' do
    @player_1_name = session[:player_1_name]
    $move = params[:move]
    erb :move
  end

  run! if app_file == $0
end
