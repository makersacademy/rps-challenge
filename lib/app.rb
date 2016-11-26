require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hello this Sparta!'
    'Just kidding, this is Rock Paper Scissors'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
