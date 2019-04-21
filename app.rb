require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    "Testing infrastructure"
    erb(:index)
  end
end
