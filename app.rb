require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

before do
    @game = Game.instance
end
    
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @games = Game.create(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @move = params[:move]
    erb :move
  end

  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
