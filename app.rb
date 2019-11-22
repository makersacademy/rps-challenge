require 'sinatra'
class Game < Sinatra::Base

  get '/' do
    erb :index
  end
end
