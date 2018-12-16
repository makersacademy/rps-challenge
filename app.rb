require 'sinatra'

set :session_secret, 'super secret' ## this line is allowing us to work with shotgun

# my_app.rb
require 'sinatra/base'

class Game < Sinatra::Base
  # ... app code here ...

  get '/' do 
    'Testing infrastructure working!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end