require 'active_support/all'
require 'sinatra'
require_relative 'game'
require_relative 'player'

class Rps < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  game = Game.new

  get '/' do
    erb :index
  end

end
