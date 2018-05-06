require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    "It's rock paper scissor time!"
  end
end
