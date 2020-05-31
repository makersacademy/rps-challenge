require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    'Infrastructure working!'
  end

  run! if app_file == $0
end
