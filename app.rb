require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    'Welcome to the rock,paper,scissors game!'
    erb :index
  end

  run! if app_file == $0
end