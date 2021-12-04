require 'sinatra/base'
require 'sinatra/reloader'

class RpsGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do

  end

  run! if app_file == $0
end