require 'sinatra/base'
require 'rack'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
end
