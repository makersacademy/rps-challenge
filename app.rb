require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
enable :sessions

get '/' do
  erb :index
end

post '/name' do
  session[:player] = params[:player]

  redirect '/play'
end

get '/play' do
    @player = session[:player]
  erb :play
end

post '/choice' do
  session[:choice] = params[:choice]

  redirect '/result'
end

get '/result' do
  @choice = session[:choice]
  game = Game.new
  @result = game.play(@choice)
  erb :result
end

  run! if app_file == $0
end