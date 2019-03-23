require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

end