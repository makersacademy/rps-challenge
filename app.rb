require 'sinatra/base'
require 'shotgun'

class Rps < Sinatra::Base

  get '/' do
      erb(:index)
  end
end
