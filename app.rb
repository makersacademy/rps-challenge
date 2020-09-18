require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base

  get '/' do 
    "Let's play RPS!"
  end 

end