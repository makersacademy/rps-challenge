require 'sinatra/base'
require './game'

class RPS < Sinatra::Base

  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new
    erb :play
  end


end