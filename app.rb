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
    session[:game] = Game.new(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    p session[:game]
    erb :play
  end

  run! if app_file == $0
end
