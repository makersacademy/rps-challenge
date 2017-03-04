require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'Hello!'
  end

  run! if app_file == $0

end
