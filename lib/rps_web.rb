require 'sinatra/base'
require './lib/game'

class Rpsweb < Sinatra::Base

  get '/' do
    "hi"
  end



end