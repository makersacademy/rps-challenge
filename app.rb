require 'sinatra/base'
class Rps < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  run! if app_file == $0
end
