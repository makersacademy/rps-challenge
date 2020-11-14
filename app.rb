require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Welcome to RPS Challenge!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
