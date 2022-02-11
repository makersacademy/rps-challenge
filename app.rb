require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissor < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end


  run! if app_file == $0
end