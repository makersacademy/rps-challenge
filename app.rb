require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
