require 'sinatra/base'
require './lib/player.rb'
require_relative './lib/game.rb'
require './lib/computer_opponent.rb'


class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end 

  get '/' do 
    erb(:index)
  end 

  post '/play' do 
    player = Player.new(params[:Name])
    opponent = Computer_Opponent.new
    @game = Game.new_game(player, opponent)
    redirect '/play'
  end 

  get '/play' do 
    @player_name = @game.player.name
    erb(:play)
  end 

  post '/result' do 
    @game.player.choose_move(params[:move]) 
    redirect '/result'
  end 

  get '/result' do 
    @move = @game.player.move
    @computer_move = @game.opponent.throw
    @result = @game.winner?
    erb(:result)
  end

end
