require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:home)
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @move = session[:move]
    @comp_move = session[:comp_move]
    erb(:play)
  end

  post '/play' do
    session[:move] = params[:move]
    session[:comp_move] = Computer.new.move
    redirect '/play'
  end

  run! if app_file == $0

end