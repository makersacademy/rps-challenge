require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  p "came in here"
  get '/' do
    erb(:index)
  end
end
