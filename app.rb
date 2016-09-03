require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    "hello - I'm rock paper scissors"
  end

  run! if app_file == $0
end
