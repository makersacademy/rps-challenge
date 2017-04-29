require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player = params[:player]
    # redirect '/setup'
    erb :setup
  end

  get '/setup' do
    @player = params[:player]
    erb :setup
  end

  run! if app_file == $0
end
