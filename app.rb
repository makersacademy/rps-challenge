require 'sinatra/base'

# Handle http requests
class RPSServer < Sinatra::Base
  get '/' do
    erb :index
  end
end
