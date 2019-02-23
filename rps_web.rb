require 'sinatra'

class Rps < Sinatra::Base
  get '/' do
    "Testing 123"
  end

  run! if app_file == $0
end
