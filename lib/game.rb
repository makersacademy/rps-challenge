class Game
  attr_reader :player1, :player2

  OPTIONS = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.start(game_instance)
    @current = game_instance
  end

  def self.read
    @current
  end

  def result
    calculate
  end

  private

  def calculate
    if OPTIONS[@player1.choice] == @player2.choice
      1
    elsif OPTIONS[@player2.choice] == @player1.choice
      -1
    else
      0
    end
  end

end
