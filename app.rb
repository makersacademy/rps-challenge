require 'sinatra/base'
# require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    "Hello World"
  end

end
