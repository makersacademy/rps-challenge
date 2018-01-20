require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    "Test page."
  end
end
