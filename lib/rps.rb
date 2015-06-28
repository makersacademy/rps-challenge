require 'sinatra/base'
require './lib/game'


class RPSchallenge < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    player = Player.new
    game = Game.new player
    @giocata = game.challenge(player.play('Rock'))


    erb :index
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
