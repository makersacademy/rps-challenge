require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hello, world!'
  end

  run! if app_file == $PROGRAM_NAME
end
