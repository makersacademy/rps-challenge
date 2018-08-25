require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end


  run! if __FILE__ == $0
end
