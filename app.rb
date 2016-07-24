require 'sinatra/base'

class RockPaperScissors < sinatra::base
  enable :sessions

  get '/' do
    "let's play rock paper scissors!"
    erb :index
  end

end
