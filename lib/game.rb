require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player1, :player2, :player1_weapon, :player2_weapon

  def initialize(name)
    @player1 = Player.new(name)
    @player2 = Computer.new
    @player1_weapon = nil
    @player2_weapon = nil
  end

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  WEAPONS = [:rock, :paper, :scissors]

  def play_game(weapon)
    player1_choose_weapon(weapon)
    player2_choose_weapon
  end

  def draw?
    self.player1_weapon == self.player2_weapon
  end

  private

  def player1_choose_weapon(weapon)
    @player1_weapon = self.player1.choose_weapon(weapon)
  end

  def player2_choose_weapon
    @player2_weapon = self.player2.choose_weapon
  end

end
