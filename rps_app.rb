require 'sinatra'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name" do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect('/game')
  end

  get "/game" do
    @game = $game
    erb(:game_page)
  end

  post "/move" do
    @game = $game
    @game.player.move(params[:move])
    @game.make_random_move
    if @game.won?(@game.random_move)
      redirect('/won')
    elsif @game.draw?(@game.random_move)
      redirect('/draw')
    else
      redirect('/lost')
    end
  end

  get "/won" do
    @game = $game
    erb(:won)
  end

  get "/lost" do
    @game = $game
    erb(:lost)
  end

  get "/draw" do
    @game = $game
    erb(:draw)
  end
end
