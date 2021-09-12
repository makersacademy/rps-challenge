require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/test' do
   'Testing 1 2 3'
  end

  post '/name' do
    erb(:play)
  end

  run! if app_file == $0
end
