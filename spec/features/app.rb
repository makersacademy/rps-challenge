require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
get '/' do
  'Top secret'
end
 end
