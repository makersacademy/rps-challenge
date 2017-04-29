require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super-secret'

  get '/' do
    'Hello, world!'
  end

  run! if app_file == $0
end
