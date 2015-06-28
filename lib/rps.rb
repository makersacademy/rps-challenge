require 'sinatra/base'
require './lib/game'
require './lib/player'


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

    $player1 = params[:name]

    erb :challenge

  end


  post '/challenge' do

    @choice = params[:choice].to_s
    player = Player.new
    game = Game.new player
    @played = game.challenge(player.play(@choice))

    erb :challenge

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
