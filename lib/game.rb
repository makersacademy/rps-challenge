class Game

  RULES = [["Rock", "Scissors"],
          ["Scissors", "Paper"],
          ["Paper", "Rock"]]

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def result
    winner(@player_1, @player_2)
  end

  private

  def winner(player_1, player_2)
    if RULES.include?([player_1.shape, player_2.shape])
      player_1
    elsif RULES.include?([player_2.shape, player_1.shape])
      player_2
    else
      "draw"
    end
  end
end
