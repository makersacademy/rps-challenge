require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base

  player = Player.new
  computer = Computer.new
  game = Game.new player, computer

  get '/' do
    erb :startgame
  end

  get '/register' do
    @name = params[:name] 
    erb :register
  end

  post '/game/new' do
    @name = params[:name]
    erb :newgame

  get '/game/play' do
    @name = params[:name]
    erb :gameplay
  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
