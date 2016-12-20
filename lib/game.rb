class Game

  WEAPONS = ["Rock", "Paper", "Scissors"]

  def self.create(player, computer)
    @game = Game.new(player,computer)
  end

  def self.instance
    @game
  end

  attr_reader :player, :computer

  def initialize(player,computer)
    @player = player
    @computer = computer
  end

  def result
    return :win if win
    return :lose if lose
    return :draw if draw
  end

  private
    def win
      (player.choice == "Rock" && computer.choice == "Scissors") || (player.choice == "Paper" && computer.choice == "Rock") || (player.choice == "Scissors" && computer.choice == "Paper")
    end

    def draw
      player.choice == computer.choice
    end

    def lose
      (player.choice == "Rock" && computer.choice == "Paper") || (player.choice == "Paper" && computer.choice == "Scissors") || (player.choice == "Scissors" && computer.choice == "Rock")
    end
end
