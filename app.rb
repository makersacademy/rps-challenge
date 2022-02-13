require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do 
    "Does this work?"
  end

  run! if app_file == $0


end
