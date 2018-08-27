require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/single' do
    erb(:single)
  end

  get '/multi' do
    erb(:multi)
  end

  post '/name' do
     player1 = Player.new(params[:player1])
     @game = Game.create(player1, Player.new('dummy'))
     # could remove this player 2 if used * in class argument
    erb(:name)
  end
  # could make ai class to pass to game

  post '/mpname' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    erb(:mpname)
  end

  get '/game' do
    @game = Game.instance
    erb(:game)
  end

  get '/mpgame' do
    @game = Game.instance
    erb(:mpgame)
  end

  post '/choice1' do
    @game = Game.instance
    @game.first_player.choice_log << params[:choice1]
    redirect(:mpgame)
  end

  post '/choice2' do
    @game = Game.instance
    @game.second_player.choice_log << params[:choice2]
    redirect(:mpgame)
  end

  post '/match' do
    @game = Game.instance
    @game.first_player.choice_log << params[:choice]
    erb(:match)
  end

  get '/mpmatch' do
    @game = Game.instance
    erb(:mpmatch)
  end

  # get '/log' do
  #   @game = Game.instance
  #   erb(:log)
  # end
  #
  # get '/mplog' do
  #   @game = Game.instance
  #   erb(:mplog)
  # end

run! if app_file == $0

end
