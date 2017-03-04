require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    "Welcome to Maker's RPS"
  end

  run! if app_file == $0
end
