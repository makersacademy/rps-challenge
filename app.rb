require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader    
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end