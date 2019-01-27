require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/names' do
    session[:player] = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do 
    @player = session[:player]
    erb(:play)
  end  

  post '/in_play' do
    session[:player].turn(params[:Choice])
    session[:game] = Game.new(session[:player])
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @player = session[:player]
    erb(:result)
  end

  run! if app_file == $0

end
