require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    'hello' 
  end
end
