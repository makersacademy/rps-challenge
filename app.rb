require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  run! if app_file == $0

end
