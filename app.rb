require 'sinatra'
require './lib/game'

class RPSWeb < Sinatra::Application
  
  get '/' do
    erb(:index)
  end

end
