require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class MyApp < Sinatra::Base

  get '/' do
  	erb :index
  end

  get '/play' do
    @game = Game.create(Player.new(params[:name]))
    erb :play
  end

  get '/game' do
    @game = Game.instance
    @game.player_1.choice = params[:weapon]
    @game.play
    @game.check
    erb :game
  end	
  # start the server if ruby file executed directly
  run! if app_file == $0
end
