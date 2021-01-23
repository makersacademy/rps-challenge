require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    "HELLO WORLD"
  end

end
