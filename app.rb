require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/rockpaperscissors.rb'

class Game < Sinatra::Base
  get '/' do
    erb(:index)
  end
end