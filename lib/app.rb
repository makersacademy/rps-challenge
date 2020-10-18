require 'sinatra/base'
require 'shotgun'

class RPS < Sinatra::Base
  get '/' do
    "Hello game"
  end
end