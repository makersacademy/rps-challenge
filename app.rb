require 'sinatra/base'
require 'sinatra/reloader'

class RockScissorsPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

    get '/' do
      'Welcome to Rock Scissors Paper game!'
    end
  
    run! if app_file == $0
end
