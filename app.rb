require 'sinatra/base'
require './lib/player'

class RPSLS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1]).name
    session[:player_2] = Player.new(params[:player_2]).name
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    session[:choice] = params[:choice]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
