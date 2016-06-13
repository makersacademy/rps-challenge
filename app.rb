require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    session[:winner] = nil
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @winner = session[:winner]
    erb :play
  end

  post '/move' do
    session[:winner] = Game.run(params[:move].downcase.to_sym)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
