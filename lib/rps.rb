require 'sinatra/base'
require './lib/game'


class RPSchallenge < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    if $player == ''
      erb :challenge
    else
      erb :index
    end
  end

  get '/challenge' do
    $player = params[:name]
    erb :challenge
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end




  # player = Player.new
    # game = Game.new player
    # @giocata = game.challenge(player.play('Rock'))


     # <!--  <%= @giocata %> -->
