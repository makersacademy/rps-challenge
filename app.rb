require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions
  
  get '/' do
   	erb :index
  end

  post '/name' do
  	session[:player_name] = (params[:player_name])
  	redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
  	erb :play
  end

  post '/game' do
  	@game = Game.create(Player.new(session[:player_name], params[:choice]), Player.new)
    redirect '/result'
  end

  get '/result' do
  	@game = Game.instance
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
