require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Welcome to RSP Game!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
