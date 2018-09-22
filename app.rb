require 'sinatra/base'
require './lib/game'
class RpsWeb < Sinatra::Base

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
    @computer_shape = Game.new
    erb :play
  end

  post '/play' do
    session[:shape] = params[:shape]
    session[:computer_shape] = :Paper
    redirect '/play'
  end

  run! if app_file == $0
end
