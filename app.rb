require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Eureka, it works!'
  end

  run! if app_file == $0
end
