require 'sinatra/base'

class RPSApp < Sinatra::Base
  run! if app_file == $0
end
