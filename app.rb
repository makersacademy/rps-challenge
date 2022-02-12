require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
      "Rock Paper Scissors \m/"
  end

  run! if app_file == $0
end
