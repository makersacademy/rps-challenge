require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    "Rock Paper Scissors"
  end
end
