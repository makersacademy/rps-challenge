require_relative 'computer'

class Game
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  CHOICE = [:rock, :paper, :scissors]
  attr_reader :player_1, :player_2, :game

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create player_1, player_2=Computer.new
    @game = self.new player_1, player_2
  end

  def self.instance
    @game
  end

  def result
    player   = @player_1.choice
    computer = @player_2.choice
    if player == computer
      :draw
    else
      RULES[player] == computer ?  :win : :lose
    end
  end

end
