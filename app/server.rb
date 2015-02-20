require 'sinatra/base'

class RockServer < Sinatra::Base
  get '/' do
    'Hello RockServer!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
