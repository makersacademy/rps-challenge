require 'sinatra/base'

class Rpsls < Sinatra::Base
  
  get '/' do
    'Hello Rpsls!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
