require 'sinatra/base'
 
class RPS < Sinatra::Base
  
  get '/' do
    # "Let's play RPS!"
    erb :index
  end
   
  run! if app_file == $0
end
