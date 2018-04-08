require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:player_name)
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @selection = params[:choice]
    session[:game] = Game.new(@player)
    erb(:play)
  end

  get '/selection' do
    @player = session[:player]
    @selection = params[:choice]
    @game = session[:game]
    erb(:selection)
  end

  get '/result' do
    @player = session[:player]
    @game = session[:game]
    @computer_move = @game.computer_move
    @player_move = @game.player.move

    erb(:result)
  end



run! if app_file == $0
end
