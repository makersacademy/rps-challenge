require 'sinatra/base'
require 'app_spec'

class RPS < Sinatra::Base
  get '/' do
    'Welcome to rock, paper & scissors!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
