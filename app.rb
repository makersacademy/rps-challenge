require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  run! if app_file == $PROGRAM_NAME
end
