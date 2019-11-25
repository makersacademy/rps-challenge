require 'sinatra/base'

class RPSApp < Sinatra::Base

  set :session_secret, "Secret session"
  enable :sessions

  get '/welcome' do
    erb :index
  end

  post '/names' do
    session[:names] = params[:names]
    erb :play
  end

  post '/play' do
# should this be 'get' for @names ?
    @names = session[:names]
# should @item be defined for the session in a post 'player_move' 
    session[:item] = params[:item]
    erb :in_game
  end

  get '/player_move' do
    @names = session[:names]
    @item = session[:item]
    erb :selection
  end
# start the server if the ruby file executed directly
  run! if app_file == $0
end
