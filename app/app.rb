
require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end

end
