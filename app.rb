require 'sinatra/base'
#require 'shotgun'
#require_relative './lib/player'
#require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    "Hello RPS!"
  end

end
