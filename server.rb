require 'sinatra/base'

class Server < Sinatra::Base
  get '/' do
    'Hello Server!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
