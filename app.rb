require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :enter_names
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
