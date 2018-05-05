require 'sinatra/base'

class RockPaper < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end
end
