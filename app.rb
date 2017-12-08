require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hi'
  end
end
