require 'sinatra'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb(:login)
  end

  post '/names' do
    @game = Game.create_game(params[:player1], params[:player2])
    redirect '/lobby'
  end

  get '/lobby' do
    @game = Game.game
    erb(:lobby)
  end

  get '/playground' do
    @game = Game.game
    erb(:playground)
  end

  post '/results' do
    @game = Game.game
    @test = @game.player1.select_wep(params[:player1_select])
    @test2 = @game.player2.select_wep(params[:player2_select])
    erb(:results)
  end



end