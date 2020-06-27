require 'sinatra/base'

class RPSWeb < Sinatra::Base
  
  get '/' do
    'Welcome to the R.P.S game!'
  end
end
