require 'sinatra/base'

class RPS < Sinatra::Base 

  get '/' do
    "Test page working"
  end

  run! if app_file == $0

end