require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do 
    "Let's play RPS!"
  end 

end