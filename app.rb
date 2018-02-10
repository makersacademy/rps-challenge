require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base

  # before do
  #   @game = Game.instance
  # end

  get '/' do
    erb(:index)
  end

end
