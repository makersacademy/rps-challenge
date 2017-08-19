require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'TESTING'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
