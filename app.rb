require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  enable :sessions

  get '/' do
    erb :index
  end

  run! if app_file == $0
end