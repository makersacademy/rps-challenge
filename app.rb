require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/single_player' do
    erb :single_player_name
  end

  post '/single_player/name' do
    @player1 = Player.new(params[:player])
    @player2 = Computer.new
    @game = Game.create_game(@player1, @player2)
    redirect '/single_player/game'
  end

  get '/single_player/game' do
    @game = Game.instance
    erb :single_player_game
  end

  post '/single_player/game' do
    @game = Game.instance
    erb :single_player_game
  end

  post '/single_player/game/result' do
    @game = Game.instance
    @player_weapon = params[:choice].downcase.to_sym
    @computer_weapon = @game.player2.choice
    @winner = @game.decide_winner(@player_weapon, @computer_weapon)
    @winner.record_score if @winner != :tied
    erb :result
  end

end
