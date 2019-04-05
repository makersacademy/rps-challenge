require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

end
