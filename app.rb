require 'sinatra/base'
require 'sinatra/reloader'
require './lib/rps'

class Game < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:game] = RPS.new
    session[:name] = params[:name]
    @name = session[:name]
    erb :play
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/result' do
    @game = session[:game]
    erb :result
  end

end
