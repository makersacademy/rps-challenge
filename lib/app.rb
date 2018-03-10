require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb(:register)
  end

end
