require 'sinatra/base'

class RPS < Sinatra::Application

  get '/' do
    'Hi'
  end

run! if app_file == $0
end
