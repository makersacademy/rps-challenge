require 'sinatra/base'

class Rockpaperscissors <  Sinatra::Base

  get '/' do
    erb :index
  end
end
