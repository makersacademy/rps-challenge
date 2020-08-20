require 'sinatra/base'

class RPSApp < Sinatra::Base

  get '/' do
    "Hello World"
  end

end