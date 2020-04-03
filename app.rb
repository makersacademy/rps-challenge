require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Server is working as expected'  
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
