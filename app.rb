require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    'Hi there visitor!'
  end

  run! if app_file == $0
end
