class Game
  attr_reader :player, :computer, :draw, :winner

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
    @draw = true
    @winner = nil
  end

  def who_wins
    if (player.choice.include?("rock") && computer.choice == "paper") ||
       (player.choice.include?("paper") && computer.choice == "scissors") ||
       (player.choice.include?("scissors") && computer.choice == "rock")
       @winner = @computer
    elsif (player.choice.include?("rock") && computer.choice == "scissors") ||
          (player.choice.include?("paper") && computer.choice == "rock") ||
          (player.choice.include?("scissors") && computer.choice == "paper")
       @winner = @player
    else
      @draw
    end
  end
end
