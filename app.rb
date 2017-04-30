require 'sinatra/base'
require_relative './lib/singleplayer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/single_player' do
    erb :single_player_name
  end

  post '/single_player/name' do
    @game = SinglePlayer.create_game(params[:player])
    redirect '/single_player/game'
  end

  get '/single_player/game' do
    @game = SinglePlayer.instance
    erb :single_player_game
  end

  post '/single_player/game' do
    @game = SinglePlayer.instance
    erb :single_player_game
  end

  post '/single_player/game/result' do
    @game = SinglePlayer.instance
    @player_weapon = params[:choice].downcase.to_sym
    @computer_weapon = @game.computer.choice
    @winner = @game.decide_winner(@player_weapon, @computer_weapon)
    @winner.record_score if @winner != :tied
    erb :result
  end

end
