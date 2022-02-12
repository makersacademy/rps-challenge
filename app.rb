require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1_name]
    erb :play
  end

  get '/selection' do
    @selection = params[:subject]
    erb :selection
  end


  run! if app_file == $0
end