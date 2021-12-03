require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
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

  get '/turn' do
    erb :turn
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/turn'
  end

  run! if app_file == $0
end
