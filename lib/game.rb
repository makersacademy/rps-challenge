class Game

  attr_accessor :choice
  attr_reader :moves, :player_one
  DEFAULT_MOVES = ["Rock", "Paper", "Scissors"]

  def initialize(player_one)
    @player_one = player_one
    @moves = DEFAULT_MOVES
  end

  def cpu_move
    @choice = @moves[random_move]
  end

  def result
    draw? ? "It's a draw!" : (player_wins? ? "You win!" : "You lose!")
  end

  def self.create(player_one)
    @game = Game.new(player_one)
  end

  def self.instance
    @game
  end

  private

  def random_move
    Kernel.rand(3)
  end

  def draw?
    @choice == @player_one.choice
  end

  def player_wins?
    @choice == "Scissors" && @player_one.choice == "Rock" ||
    @choice == "Rock" && @player_one.choice == "Paper" ||
    @choice == "Paper" && @player_one.choice == "Scissors"
  end

end
