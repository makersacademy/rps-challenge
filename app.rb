require "sinatra"

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    "test"
  end



  run! if app_file == 0
end