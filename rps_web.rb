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
    @name = params[:name]
    erb :play_game
  end


  run! if app_file == $0
end
