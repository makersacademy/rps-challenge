class Game
  attr_reader :player, :computer

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
    winner = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }

    if player.choice == computer.choice
      nil
    elsif computer.choice == winner[player.choice]
      player
    else
      computer
    end
  end
end
