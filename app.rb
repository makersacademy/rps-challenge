require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end


  get "/" do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    @game = Game.create(player1, player2)
    redirect ('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/results' do
    @player1_move = params[:player1_move]
    @player2_move = params[:player2_move]
    @winner = @game.moves(@player1_move, @player2_move)
    erb(:results)
end
end
