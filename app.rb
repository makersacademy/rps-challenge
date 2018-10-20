require 'sinatra'

# RockPaperScissors
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello world'
  end

  run! if app_file == $PROGRAM_NAME
end
