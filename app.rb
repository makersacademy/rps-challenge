require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    "Hello World"
  end
end
