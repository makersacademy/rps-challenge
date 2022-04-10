require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/play' do
    "Rock"
    erb :play
  end

  run! if app_file == $0
end
