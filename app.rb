require 'sinatra/base'

class RPS < Sinatra::Base

  set :session_secret, "qwerty"

  get '/' do
    erb(:rps)
  end

  run! if app_file == $0
end
