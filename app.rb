require 'sinatra/base'

class RPS < Sinatra::Base

  get "/" do
    erb(:sign_in)
  end

  post ""

end
