require 'sinatra/base'

class CSB < Sinatra::Base
  get '/' do
    'Hello CSB!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
