require 'sinatra/base'

class Rock < Sinatra::Base

  get '/' do
    "Hello!"
  end

  run! if app_file == $0
end
