require 'sinatra/base'
require './lib/player'
require './lib/game'


class Rps < Sinatra::Base
  enable :sessions
  set :session_store, Rack::Session::Pool

  get '/' do
    erb :index
  end

  post '/name' do
    session[:game] = Game.new(Player.new(params[:player_name]),Player.new("Computer"))
    redirect '/play'
  end

  get '/play' do
    session[:game].play(session[:choice])
    @game = session[:game]
    @choice = session[:choice]
    erb :play
  end

  post '/player_choice' do
    session[:choice] = params[:choice]
    session[:game].random_choice
    redirect '/play'
  end

  run! if app_file == $0
end
