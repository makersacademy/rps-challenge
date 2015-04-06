require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'player'
require_relative 'rspls'

class Rspls < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @title = "Start Game"
    erb :index
  end

  get '/start_game.erb' do
    @title = "Player 1"
    @name = param[:name]
    erb :start_game
  end

  not_found do
    erb :not_found
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
