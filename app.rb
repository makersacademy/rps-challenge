require 'sinatra/base'
require 'sinatra/reloader'

class ..... < Sinatra::Base
 configure :development do
     register Sinatra::Reloader
 end

 get '/' do
     'Hellow World'
 end

 run! if app_file == $0
end