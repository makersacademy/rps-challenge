require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

end