require 'sinatra/base'

class RPSWeb < Sinatra::Application
  get '/' do
    erb :index
  end
end
