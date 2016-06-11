require 'sinatra/base'

class RPSApp < Sinatra::Base
  run! if app_file == $PROGRAM_NAME
end
