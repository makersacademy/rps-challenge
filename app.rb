require 'sinatra/base'

class Game < Sinatra::Base
  get '/' do
    erb :index
  end
end
