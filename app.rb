require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

    configure :development do
     register Sinatra::Reloader
    end

    run! if app_file == $0

    get '/' do
     'Testing infrastructure working'
    end

end
