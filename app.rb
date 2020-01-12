require 'sinatra/base'
require './lib/rps'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end
end