require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end
end
