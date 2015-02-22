require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    GAME = Game.new
    # GAME.clear_game
    computer  = Player.new(name: "computer player")
    computer.pick [:rock, :paper, :scissors].sample
    GAME.add computer
    p 0, GAME.players
    erb :name
  end

  post '/play' do
    p 1, GAME.players
    @name     = params[:name]
    user      = Player.new(name: @name)
    GAME.add user
    p 2, GAME.players
    
    erb :play
  end

  post '/result' do
    p 3, GAME.players
    @user_shape     = GAME.player_two.pick params.values.first.to_sym
    @computer_shape = GAME.player_one.shape
    p 4, GAME.players
    

    @name = GAME.player_two.name
    if GAME.winner == GAME.player_one
      @winner = :computer
    elsif GAME.winner == GAME.player_two  
      @winner = :user
    end

    # GAME.clear_game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


