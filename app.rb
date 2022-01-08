require 'sinatra/base'
require 'sinatra/reloader'

class BookMarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    'hello there!'
  end
  
  run! if app_file == $0
end
