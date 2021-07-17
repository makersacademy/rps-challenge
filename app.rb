require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::reloader
  end


end