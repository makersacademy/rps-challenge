require 'sinatra'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end
  
  # get '/result' do
  #   "Hello world"
  # end

  run! if app_file == $0
end