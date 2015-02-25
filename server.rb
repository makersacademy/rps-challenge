require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    GAME = Game.new
    computer  = Player.new(name: "computer player")

    # computer.pick [:rock, :paper, :scissors].sample
    GAME.add computer

    erb :name
  end

  post '/play' do
    GAME.player_one.pick [:rock, :paper, :scissors].sample
    GAME.players.pop if GAME.players.count == 2
    @name     = params[:name]
    user      = Player.new(name: @name)
    GAME.add user

    erb :play
  end

  post '/result' do

    @user_shape     = GAME.player_two.pick params.values.first.to_sym
    @computer_shape = GAME.player_one.shape
    @name = GAME.player_two.name

    if GAME.winner == GAME.player_one
      @winner = :computer
    elsif GAME.winner == GAME.player_two
      @winner = :user
    end

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


