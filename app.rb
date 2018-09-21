require 'sinatra/base'
 
class RPS < Sinatra::Base
  get '/' do
    'hello world'
  end
end
