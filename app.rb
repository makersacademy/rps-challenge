require 'sinatra'

class Rps < Sinatra::Base
  get '/' do
  erb(:index)
  end

  # start server if executed correctly
  run! if app_file == $0
end
