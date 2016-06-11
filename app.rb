require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/start' do
    name = params[:username].capitalize
    Game.start(Player.new(name), Player.new)
    @player1 = Game.instance.players.first
    @player2 = Game.instance.players.last

    erb :start_layout, layout: :layout do
      erb :choices
    end
  end

  post '/choices' do
    @player1 = Game.instance.players.first
    @choice = params[:choice].capitalize
    erb :continue_layout, layout: :layout do
      erb :choices
    end
  end
end
