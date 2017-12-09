require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    'Welcome to RPS'
  end

  run! if app_file == $0
end
