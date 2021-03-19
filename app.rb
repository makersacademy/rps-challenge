require 'sinatra'
require 'sinatra/base'

class RPS < Sinatra::base

  get '/' do
    erb :index
  end
end
