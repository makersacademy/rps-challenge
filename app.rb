require 'sinatra/base'
require 'sinatra'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    "Hello world!kkgkhg"
  end

  run! if app_file == $0

end
