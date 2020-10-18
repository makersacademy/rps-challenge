require 'sinatra/base'

class RPS < Sinatra::Base
get '/' do
  'HelloRPS!'
end
  run! if app_file == $0
end
