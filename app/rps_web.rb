require 'sinatra'

class RPSWeb < Sinatra::Application

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    "Let's play!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
