require 'sinatra/base'

class Spar < Sinatra::Base

  get '/' do
    erb :index
  end

end
