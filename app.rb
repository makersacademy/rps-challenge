require 'sinatra/base'
require 'sinatra/reloader'

class RPSApp < Sinatra::Base
  enable :sessions

  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  run! if app_file == $0
end