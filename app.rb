require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end
  
  get '/play' do
    @player = Player.new(session[:player_name])
    erb :play
  end

  post '/winner' do
    @player = Player.new(session[:player_name])
    @player.move = params[:player_move]
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end