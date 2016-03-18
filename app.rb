require 'sinatra/base'

class Game < Sinatra::Base
  get '/' do
    'Hello Game!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
