require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    "It's rock paper scissor time!"
  end
end
