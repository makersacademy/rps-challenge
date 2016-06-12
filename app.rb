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

  post '/rock' do
    session[:winner] = Game.run(session[:name],:rock)
    redirect '/play'
  end

  post '/paper' do
    session[:winner] = Game.run(session[:name],:paper)
    redirect '/play'
  end

  post '/scissors' do
    session[:winner] = Game.run(session[:name],:scissors)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
