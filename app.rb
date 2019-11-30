require 'sinatra/base'

class RpsGame < Sinatra::Base
  get '/' do
    "Time for some rock, paper and scissors!"
    erb :index
  end
end

# start the server if ruby file executed directly
# run! if app_file == $0
