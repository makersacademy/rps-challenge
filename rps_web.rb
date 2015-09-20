require 'sinatra/base'
require_relative 'lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions
  set :views, proc{File.join(root, '' , 'views')}

  get '/' do
    @name = session[:name]
    erb :index
  end

  post '/play-game' do
    session[:name] = params[:name]
    redirect '/play-game'
  end

  get '/play-game' do
    @name = session[:name]
    erb :play_game
  end

  run! if app_file == $0
end
