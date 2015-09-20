require 'sinatra/base'

class RPS_Challenge < Sinatra::Base
  get '/' do
    'Hello RPS_Challenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
