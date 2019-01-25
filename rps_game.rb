require 'sinatra/base'
require 'shotgun'


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end




end
