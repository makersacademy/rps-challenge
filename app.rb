require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello boss'
  end
end