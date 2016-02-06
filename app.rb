require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb(:index)
  end
  
  get '/single' do
    erb(:single)
  end
  
  get '/multiplayer' do
    erb(:multiplayer)
  end
  
  post '/name' do
    player = Player.new(params[:name].capitalize)
    session['game'] = Game.new(player)
    redirect '/play'
  end
  
  post '/multiplayer_name' do
    player = Player.new(params[:player1].capitalize)
    player2 ||= Player.new(params[:player2].capitalize)
    $game = Game.new(player,player2)
    redirect '/play'
  end
  
  get '/play' do
    @game = session['game']
    erb(:play)
  end
  
  get '/game' do
    @game = session['game']
    @computer_choice = @game.computers_choice
    @choice = @game.players_choice(params[:choice])
    @winner = @game.winner
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
