require 'sinatra/base'

class RPS < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    'Hello World!'
  end

  #establish server if file run directly
  run! if app_file == $0
end
