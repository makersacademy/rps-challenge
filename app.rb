require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    'Welcome to Maker R-P-S app!'
  end

  run! if app_file == $0
end
