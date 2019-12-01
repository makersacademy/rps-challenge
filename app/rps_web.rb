require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

end
