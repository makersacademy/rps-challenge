require 'sinatra'

class Rps < Sinatra::Base


  get '/' do
    "Starting the app design"

    erb :index
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
