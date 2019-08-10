require 'sinatra/base'

class RPS < Sinatra::Base

  get "/" do
    "my RPS app"
  end
  
  run! if app_file == $0

end