require 'sinatra/base'

class RPSApp < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end
end
