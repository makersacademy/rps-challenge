require 'sinatra/base'
require 'sinatra'

class RPSWeb < Sinatra::Base

  get '/' do
    'Testing infrastructure working!'
  end
end  
