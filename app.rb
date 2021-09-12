require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing 1 2 3'
  end

  run! if app_file == $0
end
