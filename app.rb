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
    @option = params[:option]
    player = Player.new(@name,@option)
    @name = player.name
    virtual_player = VirtualPlayer.new
    virtual_player.pick_play
    @virtual_name = virtual_player.name
    @virtual_option = virtual_player.option
    @game = Game.new(player, virtual_player)
    erb :fight
  end

  run! if app_file == $0
end

