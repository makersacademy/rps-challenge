require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb :form
  end


  run! if __FILE__ == $0

end
