require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/ai'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    # 'hello world'
    erb :input_name
  end

  post '/name' do
   session[:p1_name] = params[:p1_name]
   redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  post '/result'do
    session[:choice] = params[:choice]
    erb :result
  end

  run! if app_file == $0
end
