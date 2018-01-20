require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    "Hello World!"
  end

end
