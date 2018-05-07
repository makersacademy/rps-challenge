class Game

  attr_reader :moves, :player_one, :computer

  def initialize(player_one, computer)
    @player_one = player_one
    @computer = computer
  end

  def result
    draw? ? "It's a draw!" : (player_wins? ? "You win!" : "You lose!")
  end

  def self.create(player_one, computer)
    @game = Game.new(player_one, computer)
  end

  def self.instance
    @game
  end

  private

  def draw?
    @computer.choice == @player_one.choice
  end

  def player_wins?
    @computer.choice == "Scissors" && @player_one.choice == "Rock" ||
    @computer.choice == "Rock" && @player_one.choice == "Paper" ||
    @computer.choice == "Paper" && @player_one.choice == "Scissors"
  end

end
