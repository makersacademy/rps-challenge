require 'sinatra/base'
require 'sinatra/reloader'

class Rpsgame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Rock, Paper, Scissors game!'
  end

  run! if app_file == $0
end
