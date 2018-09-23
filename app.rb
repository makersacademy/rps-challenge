require 'sinatra/base'
require './lib/player'
require './lib/game'
 
class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb(:index)
  end

  get '/play' do
    session[:player1] = Player.new(params[:player1_name])
    session[:player1_name] = session[:player1].name
    erb(:play)
  end

  get '/choice' do
    session[:player1].choice  = params[:choice]
    session[:game] = Game.new(session[:player1])
    erb(:choice)
  end
end
