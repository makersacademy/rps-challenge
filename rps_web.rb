require 'sinatra/base'
require 'tilt/erb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)

  end
end
