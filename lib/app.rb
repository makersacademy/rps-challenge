require 'sinatra/base'

class RPSApp < Sinatra::Base

  set :session_secret, "Secret session"
  enable :sessions

  get '/welcome' do
    erb :index
  end

  post '/names' do
    session[:names] = params[:names]
    session[:item] = params[:item]
    erb :play
  end

  post '/play' do
    @names = session[:names]
    @item = session[:item]
    redirect '/player_move'
  end

  get '/player_move' do
    @names = session[:names]
    @item = session[:item]
    erb :selection
  end
# start the server if the ruby file executed directly
  run! if app_file == $0
end
