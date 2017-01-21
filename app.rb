require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class MyApp < Sinatra::Base
  
  get '/' do
  	erb :index
  end

  post '/play' do
    $game = Game.new(Player.new(params[:name]))
    @game = $game
    erb :play
  end

  post '/game' do
  	@game = $game
      @game.player_1.choice = params[:weapon]
      @game.play
  	@game.check
	erb  :game
  end	
  # start the server if ruby file executed directly
  run! if app_file == $0
end
