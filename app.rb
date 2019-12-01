require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @shape = session[:shape]
    erb :play
  end

  post '/play' do
    session[:shape] = params[:shape]
    redirect '/result'
  end

  get '/result' do
    @result = Game.new.result(@player_move)
    @player_move = session[:shape]
    erb @result
  end

  run! if app_file == $0

end