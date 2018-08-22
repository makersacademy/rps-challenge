require 'sinatra/base'

class RPS_Game < Sinatra::Base

  get '/' do
    erb(:index)
  end

end