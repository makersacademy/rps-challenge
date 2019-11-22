require 'sinatra/base'

class Player < Sinatra::Base
  get '/' do
    'Hello Rps!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
