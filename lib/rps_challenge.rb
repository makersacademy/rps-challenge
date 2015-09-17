require 'sinatra/base'

class Rps_Challenge < Sinatra::Base
  get '/' do
    'Hello Rps_Challenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
