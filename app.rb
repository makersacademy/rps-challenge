require 'sinatra/base'
require './lib/player'
require './lib/virtual_player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:name]
    erb :play
  end

  post '/fight' do
    virtual_player = VirtualPlayer.new
    virtual_player.pick_play
    Game.create(Player.new(@name,params[:option]),virtual_player)
    Game.game.eval

    @option1 = Game.game.player1.option
    @option2 = Game.game.player2.option
    @name2 = Game.game.player2.name
    @result = Game.game.result

    erb :fight
  end

  run! if app_file == $0
end

