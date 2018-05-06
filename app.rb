require 'sinatra/base'

class Game < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "Session secret"
  end

  get '/' do
    erb(:index)
  end

  run! if app_file == $0

end
