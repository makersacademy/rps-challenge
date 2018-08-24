require 'sinatra/base'
# require each in lib

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

run! if app_file == $0
end
