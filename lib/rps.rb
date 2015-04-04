require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :homepage
  end

  get '/play' do
    @player1 = Player.new params[:name]
    @player2 = Player.new "C3-PO"

    @game = Game.new @player1, @player2
    session['game'] = @game
    @player_name = @player1.name
    @available_weapons = @game.available_weapons

    erb :gameplay
  end

  get '/play/weapon' do
    @game = session['game']
    @weapon = params[:weapon]
    @game.assign_weapon @game.player1, @weapon.to_sym
    @game.assign_weapon @game.player2, @game.available_weapons.sample
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
