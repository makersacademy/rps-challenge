require "sinatra/base"

class Battle < Sinatra::Base
  get "/" do
    "Lets Play!"
  end
  
  run! if app_file == $0
end
