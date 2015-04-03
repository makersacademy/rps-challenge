require 'sinatra/base'

class rpsWeb < Sinatra::Base
  get '/' do
    'Hello rpsWeb!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
