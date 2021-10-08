require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end

