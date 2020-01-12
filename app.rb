require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'RPS Welcome Message'
  end
  run! if app_file == $0
end