require 'sinatra/base'

class App < Sinatra::Base
  set :Session, true

  get '/' do
    'Hello World!'
  end
end
