require 'sinatra'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Infrastructure Test"
  end

  run! if app_file == $0

end
  