require 'sinatra/base'
require 'rack'
require 'shotgun'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
