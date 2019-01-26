require 'sinatra'
require 'shotgun'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing!'
  end

  run! if app_file == $PROGRAM_NAME

end
