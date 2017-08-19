require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  post '/' do
    erb :index
    redirect '/result'

  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
