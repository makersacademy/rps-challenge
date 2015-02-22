require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  game = Game.new

  get '/' do
    erb :index
  end

  post '/game' do
    game.player = Player.new(session[:Name])
    session[:Name] = params[:Name]
    erb :game
  end

  get '/game' do
    @player = session[:Name]
    erb :game
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end