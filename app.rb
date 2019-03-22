require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    "Lets play Rock Paper Scissors!"
  end
end
