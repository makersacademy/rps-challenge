require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/choose' do
    @game = Game.create_new_game(Player.new(params[:player_1]))
    @game = Game.game_instance
    erb :choose
  end
  
  # before do
  #   @game = Game.game_instance
  # end
  
  run! if app_file == $0
end
