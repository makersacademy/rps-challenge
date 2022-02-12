require 'sinatra/base'
require 'sinatra/reloader'

class Rock_paper_scissors < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    'Starting RPS application!'
  end

  run! if app_file == $0
end