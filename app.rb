require 'sinatra'
require 'sinatra/reloader' if development?

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
end

  get '/' do 
    "Hello"
  end

  run! if app_file == $0
end