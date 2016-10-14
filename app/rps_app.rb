require 'sinatra/base'

class RPSApp < Sinatra::Base
  get '/' do
    'Hello RPSApp!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
