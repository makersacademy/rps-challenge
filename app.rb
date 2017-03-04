require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'Hello! Please enter your name:'
  end

  run! if app_file == $0

end
