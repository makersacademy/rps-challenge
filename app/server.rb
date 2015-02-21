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

    player = Player.new(params[:name])
    game = games.find {|game| !game.full?}
    game.add_player(player)
    session.store(:game_id, game.uuid)
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

    # Need to use session ID to get correct game.

    @game = games.first


    erb :play
  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
