require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    "test"
  end

  run! if app_file == $0
end