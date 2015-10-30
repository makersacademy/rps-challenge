require 'sinatra/base'

class Game < Sinatra::Base
# start the server if ruby file executed directly

  run! if app_file == $0
  get '/' do
    'Hello Game!'

  end

end
