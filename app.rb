require 'sinatra/base'

class MyRPS < Sinatra:: Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    @move = params[:move]
    erb :player
  end

  post '/move' do
    @player_name = params[:player_name]
    @move = params[:move]
    erb :move
  end

run if app_file =$0


end
