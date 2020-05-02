require 'sinatra/base'

class MyRockApp < Sinatra::Base

  get '/' do
    erb :index
  end

end