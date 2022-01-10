require 'sinatra/base'
require 'sinatra/reloader'
require 'game'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
   session[:player_shape] = params[:shape]
   session[:opponent_shape] = Opponent.new.shape
   
   redirect '/play'
  end
  


   run! if app_file == $0
end