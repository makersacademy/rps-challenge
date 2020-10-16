require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/start_game' do
    session[:player1] = params[:player1]
     redirect '/play'
  end

  get '/play' do
    @name = session[:player1]
    erb :play
  end

  post '/chooses_action' do
    session[:Move] = params[:move]
    redirct '/move'
  end

  get 'move' do
    @move = session[:Move]
    you made a move
  end
    run! if app_file == $0
end