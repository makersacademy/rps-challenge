require 'sinatra'
require 'pry'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

   # start the server if ruby file executed directly
   run! if app_file == $0

   get '/' do
    erb(:index)
   end

  post '/names' do
    player = Player.new(params[:player_name])
    if params[:multiplayer] == "on"
      player2 = Player.new(params[:player2_name]) 
      Game.create(player, player2)
      session[:first_turn] = true
      redirect '/multiplayer'
    else
      Game.create(player)
      redirect '/play'
    end
    
  end

  before { @game = Game.instance }
  
  get '/play' do
    erb(:play)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  post '/move' do
    @game.player.move=(params[:move])
    if session[:first_turn] == true
      session[:first_turn] = false
      @game.swap_players
      redirect '/multiplayer'
    end
    redirect '/result'
  end

  get '/result' do
    @winner = @game.winner
    erb(:result)
  end
   
end