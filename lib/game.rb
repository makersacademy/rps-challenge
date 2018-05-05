require './lib/player.rb'

class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def player_choice(choice)
    @choice = choice
  end

  def computer_choice
    @computer_choice = Computer.new.choice
  end

end
