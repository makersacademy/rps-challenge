require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  @@game = Game.new

  enable :session

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    @@game.set_player Player.new session[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/result' do
    @choice = params[:choice].to_sym
    @computer = @@game.computer
    @outcome = @@game.play @choice
    erb :result
  end

 get '/result' do
  erb :result
 end


set :views, Proc.new { File.join(root, "..", "views") }

  # start the server if ruby file executed directly
  run! if app_file == $0
end
