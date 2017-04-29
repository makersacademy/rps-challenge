require 'sinatra/base'

class RPSapp < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :start
  end

  run! if app_file == $0
end
