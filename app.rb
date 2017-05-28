require 'sinatra'

class RPS < Sinatra::Base

  enable :session

  get '/' do
    erb :index
  end




run! if $0 == __FILE__
end
