require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'string'

  get '/' do
    erb :registration
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player_1_name]
    erb :play
  end

  post '/result' do
    @player1 = session[:player_1_name]
    erb :result
  end

  run! if app_file == $0
end
