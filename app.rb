require 'sinatra/base'

class Play < Sinatra::Base
  get '/' do
    "Let's get a way from the grind! Enter your name to play!"
    erb :getname 
  end
end
