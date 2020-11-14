require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base 
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/home'
  end

  get '/home' do
    erb(:home)
  end

  post '/game' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @winner = (Game.new(session[:name], session[:move])).round
    erb(:result)
  end

run! if app_file == $0
end