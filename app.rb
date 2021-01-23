require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'TEST'
  end

  run! if app_file == $0
end
