require 'sinatra/base'

class RPS < Sinatra::Base
  #enable :sessions 

  get '/' do
    erb(:index)
  end

end
