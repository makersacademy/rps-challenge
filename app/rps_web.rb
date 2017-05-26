require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    "Rock Paper Scissors!"
  end

end
