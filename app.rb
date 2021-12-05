require 'sinatra'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    index.erb
  end

  run! if app_file = $0
end