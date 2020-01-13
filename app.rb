require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'initial page'
  end

  run! if app_file == $0
end
