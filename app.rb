require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

end