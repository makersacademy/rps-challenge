require 'sinatra/base'

class Rps < Sinatra::base

  get '/' do
    erb :index
  end
end