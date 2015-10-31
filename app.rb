require 'sinatra'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'string'

  get '/' do
    'hello'
  end








  run! if app_file == $0
end
