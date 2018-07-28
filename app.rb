require 'sinatra/base'
class Game < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end
end
