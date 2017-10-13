require 'sinatra/base'

class Rocky < Sinatra::Base
  enable :sessions

  get '/' do
    "testing infrastructure is working"
  end

end
  