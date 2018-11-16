require 'sinatra/base'

class RockPaperScissors < Sinatra::Application

  get '/' do
    'Hello world!'
  end

end
