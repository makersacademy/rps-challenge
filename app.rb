require 'sinatra/base'

class RPS < Sinatra::Base

  run! if app_file == $0
end
