require 'sinatra/base'

class rps < Sinatra::Base
  get '/' do
    'Hello rps!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
