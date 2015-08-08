require 'sinatra/base'

class RpsWeb < Sinatra::Base
  get '/' do
    'Hello RpsWeb!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
