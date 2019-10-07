require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    erb (:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect ('/play')
  end

  get '/play' do
    @name = session[:name]
    erb (:play)
  end

  post '/result' do
    @game = Game.new(session[:name], params[:choice])
    erb (:result)
  end
end
