class Game
  attr_reader :player, :computer, :statistics
  WINNER = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def random_choice
    ["Rock", "Paper", "Scissors"].sample
  end

  def winner
    if player.choice == computer.choice
      nil
    elsif computer.choice == WINNER[player.choice]
      player
    else
      computer
    end
  end
end
