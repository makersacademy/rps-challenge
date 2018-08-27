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
     player1 = Player.new(params[:player])
     @game = Game.create(player1, Player.new('dummy'))
     # could remove this player 2 if used * in class argument
    erb(:name)
  end

  post '/mpname' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    erb(:mpname)
  end

  before do
    @game = Game.instance
  end

  get '/game' do
    erb(:game)
  end

  get '/mpgame' do
    erb(:mpgame)
  end

  post '/choice1' do
    @game.first_player.choice_log << params[:choice1]
    redirect(:mpgame)
  end

  post '/choice2' do
    @game.second_player.choice_log << params[:choice2]
    redirect(:mpgame)
  end

  post '/match' do
    @game.first_player.choice_log << params[:choice]
    erb(:match)
  end

  get '/mpmatch' do
    erb(:mpmatch)
  end

run! if app_file == $0

end
