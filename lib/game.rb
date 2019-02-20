require 'sinatra/base'
require './lib/game.rb'

class Game
  attr_reader :computer_move
  def computer_choice
    @computer_move = "Paper"
  end
end
