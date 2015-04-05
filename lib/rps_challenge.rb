require 'sinatra/base'

class rps_challenge < Sinatra::Base
  get '/' do
    'Hello rps_challenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
