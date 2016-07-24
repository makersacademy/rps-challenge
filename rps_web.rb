require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    "O.K you want to play Rock, Paper, Scissors?"
    
  end
end
