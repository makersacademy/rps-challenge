require 'sinatra/base'

class MyRockApp < Sinatra::Base

  get '/' do
    "hello world"
  end

end