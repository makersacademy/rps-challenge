require 'sinatra/base'
require './lib/game'
require './lib/player1'
require './lib/computer'

class Rps < Sinatra::Base
    set :views, Proc.new { File.join(root, "..", "views") }
    enable :sessions


  get '/' do
    session["user"] ||= nil
    erb :index
  end

  post '/game' do
    session["user"] = params[:value]
    erb :game

  end

  get '/game/new' do
    session["game"] = Game.new Player.new, Computer.new
    erb :game_new
  end

  get '/game' do
    erb :play
  end







  # start the server if ruby file executed directly
  run! if app_file == $0
end

