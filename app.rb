require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    "hello"
  end

end
