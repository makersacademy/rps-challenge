require 'sinatra/base'

class Jajanken < Sinatra::Base
  get '/' do
    'Hello Jajanken!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
