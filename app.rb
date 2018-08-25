require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end

  run! if app_file == $0

end
