require 'sinatra/base'
require 'rps'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/' do
  end

  run! if app_file == $0
end
