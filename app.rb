require 'sinatra/base'
require 'sinatra/reloader'

class RpsChallenge < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = params[:name]
    erb(:play)
  end

  run! if app_file == $0
end