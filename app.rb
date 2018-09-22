require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class GameApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    @name = session[:name]
    erb :named_player
  end

  get '/play' do
    @name = session[:name]
    erb :move
  end

  post '/move' do
    @choice = params[:choice]
    @name = session[:name]
    erb :result
  end

  # start the server if ruby file executed dierectly
  run! if app_file == $0

end
