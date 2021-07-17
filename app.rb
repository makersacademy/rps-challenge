require 'sinatra/base'
require 'sinatra/reloader'


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end










end