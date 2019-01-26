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
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do 
    @name = session[:name]
    erb(:play)
  end  

  post '/in_play' do
    player = Player.new(params[:choice])
    game = Game.new(player)
    game.determine_winner
    session[:result] = game.winner
    redirect '/result'
  end

  get '/result' do
    @winner = session[:result]
    erb(:result)
  end

  run! if app_file == $0

end
