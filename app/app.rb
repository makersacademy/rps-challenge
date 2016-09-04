require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :home
  end

  run! if app_file == $0
end
