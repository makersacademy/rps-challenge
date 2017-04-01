require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    "Welcome, enter name:"
  end

end
