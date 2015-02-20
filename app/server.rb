require_relative './lib/game'
require_relative './lib/player'
require 'sinatra/base'

class RockServer < Sinatra::Base

  games = Array.new

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do

    # add player unique ID to session!

    player = Player.new(params[:name])
    game = games.find {|game| !game.full?}
    game.add_player(player)
    @game = game
    erb :play
  end

  get '/newgame' do

    if games.all? &:full?
      games << Game.new
    end

    erb :newgame
  end

  get '/play' do

    # Temporary code, just playing

    weapon = params[:weapon]
    weapon.upcase.to_sym

    @game = games.first

    @game.player1.choose(weapon)

    erb :play
  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
