require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    "Hello world!"
  end
end
