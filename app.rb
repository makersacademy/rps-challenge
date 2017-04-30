require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end


end
