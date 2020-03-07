require 'sinatra/base'
require './lib/game'

class RockPaperSissors < Sinatra::Base

  run! if app_file == $PROGRAM_NAME
end
