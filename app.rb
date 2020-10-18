require 'sinatra/base'
require_relative 'lib/comp_opponent'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:Player1]
    session[:move] = params[:move]
    erb(:play)
  end

  post '/move' do
    @player1 = session[:Player1]
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player1 = session[:Player1]
    @move = session[:move]
    erb(:result)
  end
 
  run! if app_file == $0
end
