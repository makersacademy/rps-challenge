require 'sinatra/base'

class RPSLS < Sinatra::Base

  get '/' do
    'Hello RPSLS!'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
