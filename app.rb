$VERBOSE=nil

require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new-game' do
    @game = Game.create(Player.new(params[:name]))
    erb :new_game
  end

  post '/result' do
    @game = Game.instance
    p @game
    @option = params[:option]
    @game.player.choose_option(@option)
    @random_option = @game.play
    @winner = @game.declare_winner(@random_option)
    erb :result
  end

  run! if app_file == $0

end
