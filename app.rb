require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    'Hello Rock, Paper and Scissors!'
    'Testing infrastructure working!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end