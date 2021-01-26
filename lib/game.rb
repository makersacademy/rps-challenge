class Game

  attr_reader :player, :winner
  attr_accessor :opponent

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  RULES = {
    Rock: "Scissors",
    Scissors: "Paper",
    Paper: "Rock"
  }

  def win_lose_draw
    if RULES[player.choice.to_sym] == opponent.choice
      @winner = :player
    elsif player.choice == opponent.choice
      @winner = :draw
    elsif RULES[player.choice] != opponent.choice && player.choice != opponent.choice
      @winner = :opponent
    end
  end
end
