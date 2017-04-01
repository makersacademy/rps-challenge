require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions


  get '/' do
    erb :index
  end
end
