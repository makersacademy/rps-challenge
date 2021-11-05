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
    @name = session[:name]
    erb :game
  end

  post '/game' do
    session[:name] = params[:name]
    redirect '/play'
  end

  post '/winner' do
    erb :winner
  end

  run! if app_file == $0
end