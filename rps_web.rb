require 'sinatra/base'

class Rps_challenge < Sinatra::Base

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
