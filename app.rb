require 'sinatra/base'

class Player < Sinatra::Base
  get '/' do
    erb :index
  end
end
