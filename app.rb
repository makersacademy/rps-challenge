require 'sinatra/base'
require 'sinatra/reloader'

class Marketeer < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello, world! App for marketeer'
  end

end