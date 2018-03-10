require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello World'
  end
end
