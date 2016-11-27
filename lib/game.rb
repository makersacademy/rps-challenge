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

  def win
    (player.choice == "Rock" && computer.choice == "Scissors") || (player.choice == "Paper" && computer.choice == "Rock") || (player.choice == "Scissors" && computer.choice == "Paper")
  end

  def draw
    player.choice == computer.choice
  end

  def lose
    (computer.choice == "Rock" && player.choice == "Scissors") || (computer.choice == "Paper" && player.choice == "Rock") || (computer.choice == "Scissors" && player.choice == "Paper")
  end

  def result
    return :win if win
    return :lose if lose
    :draw

  end

end
