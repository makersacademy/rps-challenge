require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'Testing infrastructure'
  end

  run! if app_file == $0
end
