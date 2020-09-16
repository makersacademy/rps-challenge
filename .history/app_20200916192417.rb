require "sinatra/base"

class RPS < Sinatra::Base
  get "/" do
    "Lets Play!"
  end
  
  run! if app_file == $0
end
