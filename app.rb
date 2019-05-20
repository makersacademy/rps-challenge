require 'sinatra/base'
require_relative 'models/player.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1] = params[:player_1_name]
    redirect 'play'
  end

  get '/play' do
    @name = session[:player_1]
    @player_1 = Player.new(@name)
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/winner'
  end

  run! if app_file == $0

end