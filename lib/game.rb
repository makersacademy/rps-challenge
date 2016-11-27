class Game

  Weapons = ["Rock", "Paper", "Scissors"]

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
    if win
      return :win
    elsif lose
      return :lose
    else
      :draw
    end
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
