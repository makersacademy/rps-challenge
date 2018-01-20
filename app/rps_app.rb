require 'Sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    "Hello"
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
