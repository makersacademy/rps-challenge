require 'sinatra/base'

class RPSWeb < Sinatra::Base 
  enable :sessions
  get '/' do
    "Hello World"
  end
end