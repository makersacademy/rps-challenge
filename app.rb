require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader  
  end

  get '/' do
    erb(:index)
  end

  run! if app_file == $0

  post '/name' do
    @player = params[:player]
    erb(:play)
  end
end