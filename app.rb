require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing!!!'
  end

  run! if app_file == $0

end
