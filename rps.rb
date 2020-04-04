require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    "Hello RPS!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
