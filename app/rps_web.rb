require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    "Hello, world!"
  end
end
