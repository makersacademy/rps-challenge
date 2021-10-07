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

  post '/players' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:player_name]
    erb(:game)
  end

  run! if app_file == $0
end