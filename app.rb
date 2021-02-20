require 'sinatra/base'

class RpsGame < Sinatra::Base

  get '/' do
    erb :index
  end

end
