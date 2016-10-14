require 'sinatra/base'

class rps-challenge < Sinatra::Base
  get '/' do
    'Hello rps-challenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
