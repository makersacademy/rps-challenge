require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    "Hello World"
  end

  run! if app_file == $0
  
end
