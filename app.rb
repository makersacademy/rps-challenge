require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    'Hello RPS'
  end

end
