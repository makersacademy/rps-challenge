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
    redirect('/result')
  end

  get "/result" do
    @game = $game
    'You entered:' + @game.player.player_move
  end

end
