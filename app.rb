require 'sinatra/base'
require 'sinatra/reloader'

class RPSWeb < Sinatra::Application 
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing infrastructure working!'
  end
end 