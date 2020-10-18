require 'sinatra/base'
require 'shotgun'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'Rock is my favourite move'

  get '/' do
    erb(:index)
  end

  post '/names' do
    puts params
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @move = params[:move]
    erb(:result)
  end
end