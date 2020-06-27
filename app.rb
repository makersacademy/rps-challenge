require 'sinatra/base'
class RPS < Sinatra::Base 
  get '/' do
    "Hello world"
  end
end
