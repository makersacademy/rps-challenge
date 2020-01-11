require 'sinatra/base'

class Rockpaperscissors  < Sinatra::Base
    get '/' do
        'Hello rock paper scissors!'
      end
    
      # start the server if ruby file executed directly
      run! if app_file == $0
    end
end