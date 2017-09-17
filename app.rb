require 'sinatra/base'

class RPSWeb < Sinatra::Base
  set :sessions, true
  get '/' do
    erb(:index)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
