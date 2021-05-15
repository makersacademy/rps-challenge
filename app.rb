require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello! Welcome to Rock, Paper, Scissors!'
  end

  run! if app_file == $0
end
