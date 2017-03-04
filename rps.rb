require 'sinatra/base'

class RPS < Sinatra::Base
  set :sessions, true

  get '/' do
    'Hello World!'
  end
end
