require_relative 'player'
require_relative 'computer_player'
class Game

GAME_RULES = {rock: :scissors, paper: :rock, scissors: :paper}

  attr_reader :player1, :player2

  def self.instance
    @instance
  end

  def self.create(player1, player2 = ComputerPlayer.new)
    @instance = Game.new(player1, player2)
  end


  def initialize(player1, player2 = ComputerPlayer.new)
    @player1 = player1
    @player2 = player2
  end

  def draw?
    @player1.weapon_choice == @player2.weapon_choice
  end

  def winner
    GAME_RULES[@player1.weapon_choice] == @player2.weapon_choice ? @player1 : @player2
  end

end
