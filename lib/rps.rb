require 'sinatra/base'

class RPSchallenge < Sinatra::Base
  get '/' do
    'What is your name?'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
