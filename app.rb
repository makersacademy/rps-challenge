require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:playername] = params[:playername]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:playername]
    erb :play
  end

  post '/move' do
    session[:selection] = params[:selection]
    redirect '/make_move'
  end

  get '/make_move' do
    @player_name = session[:playername]
    @player_move = session[:selection]
    erb :make_move
  end

end
