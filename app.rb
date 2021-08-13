require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :welcome
  end

  get '/play' do
    @player1, @player2 = session[:player1], session[:player2]
    
    erb :play
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]

    redirect '/play'
  end

  post '/choose' do
    redirect '/play'
  end

  run! if app_file == $0
end
