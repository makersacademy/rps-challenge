require 'sinatra/base'

class Rps < Sinatra::Base
  set :sessions, true

  get '/' do
    "Hello!"
  end

end
