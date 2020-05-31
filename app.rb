require 'sinatra/base'
require './lib/computer'

class Player < Sinatra::Base
  set :session_secret, "something"
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @move = Computer.new.comp
    p @move
    erb :play
  end
end

