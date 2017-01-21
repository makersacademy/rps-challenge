require 'sinatra/base'
require './lib/opponent.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @opponent = Opponent.create
    erb(:play)
  end

  post '/who_wins' do
    session[:player_weapon] = params[:player_weapon]
    redirect '/battle'
  end

  get '/battle' do
    @opponent = Opponent.instance
    @player_name = session[:player_name]
    @player_weapon = session[:player_weapon]
    erb(:battle)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
