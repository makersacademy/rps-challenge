require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  # start the server if ruby file executed directly
  run! if app_file == $0
end
