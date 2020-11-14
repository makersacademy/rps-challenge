require 'sinatra/base'

class Game < Sinatra::Base

  set :session_secret, 'rps'

  get '/' do
    erb :index
  end

  run! if app_file == $0

end
