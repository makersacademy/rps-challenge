require 'sinatra/base'

class Player < Sinatra::Base
  set :session_secret, "something"
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    session[:player_1] = params[:player_1]
    p session[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    p @player_1
    erb :play
  end
end

