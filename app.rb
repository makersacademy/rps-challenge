require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    "Hello RPS!"
  end


  run if app_file == $0
end
