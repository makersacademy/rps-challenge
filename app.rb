
require 'sinatra/base'

class RPS < Sinatra::Base

  get "/" do
    "Welcome to RPS game"
  end
  
run! if app_file == $0
end
