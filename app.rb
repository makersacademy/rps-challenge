require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader 
  end 

  get '/' do 
    erb :index
  end 

  get '/play' do
    p params 
    @player_name = params[:player_name]
  erb :play
  end 

  get '/move' do
    @player_name = params[:player_name]
    @player_move = params[:player_move]
    erb :move
  end 

  run! if app_file == $0
end 
