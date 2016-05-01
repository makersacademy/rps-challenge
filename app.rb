require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @game = Game.start(params[:player_name])
    erb(:play)
  end

  post '/result' do
    @game = Game.instance
    @game.player.take_turn(params[:player_choice])
    # @game.winner
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
