require 'sinatra'

class Rps < Sinatra::Base
  get '/' do
    'hello world'
  end
end
