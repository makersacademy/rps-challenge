require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    redirect '/play'
  end

  run! if app_file == $0
end