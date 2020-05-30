require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    "Welcome player!"    
  end

  run! if app_file == $0
end
