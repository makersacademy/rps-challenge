require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './app/server.rb'

class RockPaperScissors < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
  @name = params[:name]
  erb :name
  end

  post '/game' do
  @name = params[:name]
  erb :game
  end

  post '/play' do
  erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
