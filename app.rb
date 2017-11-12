require 'sinatra/base'
require './lib/game'
# app file for Rock Paper Scizors game
class RSPgame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    player2 = Computer.new
    Game.create=Game.new(player, player2)
    redirect '/play'
  end

  get '/play' do
    @instance = Game.instance
    erb(:play)
  end

  post '/play' do
    @instance = Game.instance
    @instance.choice(params[:option])
    erb(:play)
    redirect '/game'
  end

  get '/game' do
    @instance = Game.instance
    erb(:game)
  end



end
