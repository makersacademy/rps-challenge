require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hello Owliver!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
