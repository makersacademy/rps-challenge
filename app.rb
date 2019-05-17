require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    'hello world'
  end
end
