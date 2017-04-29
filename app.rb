require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/setup'
  end

  get '/setup' do
    @player = session[:player]
    erb :setup
  end

  get '/attack' do
    @player = session[:player]
    p @player
    erb :attack
  end

  run! if app_file == $0
end
