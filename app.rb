require 'sinatra/base'
require './lib/opponent'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @round = Round.new(session)
    @name = session[:name]
    @shape = session[:shape]
    @opposition_shape = session[:opposition_shape]
    erb :game
  end

  post '/game' do
    session[:shape] = params[:shape]
    session[:opposition_shape] = Opponent.new.randomise
    redirect '/game'
  end


  run if app_file == $0
end
