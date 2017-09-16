require "sinatra/base"

class Rps < Sinatra::Base


  get "/" do
    "testing infrastructure working!"
  end

  run! if app_file == $0


end
