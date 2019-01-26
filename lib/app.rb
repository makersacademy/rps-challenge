require 'sinatra/base'
require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    "Hello world!"
  end

  run! if app_file == $0

end

