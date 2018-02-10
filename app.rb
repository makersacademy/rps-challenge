require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    "Hello World"
  end

  # start the server is file executed directly
  run! if app_file == $0

end
