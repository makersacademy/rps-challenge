require 'sinatra'

class RPS < Sinatra::Application

  enable :sessions
  set :session_secret, 'XPTO'

  get '/' do
    "Let's play RBS!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  
end
