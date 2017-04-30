require 'sinatra/base'

class RPS < Sinatra::base
  get '/' do
    "Hello RPS!"
  end

  run if app_file == $0
end 
