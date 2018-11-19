require_relative "./player.rb"

class Game
  CHOICES = ["Rock", "Paper", "Scissors"]
  attr_reader :player_1, :computer, :draw
  attr_accessor :winner
  def initialize(name1, name2, player_class_1 = Player, player_class_2 = Player)
    @player_1 = player_class_1.new(name1)
    @computer = player_class_2.new(name2)
    @winner = nil
  end
  def random
    CHOICES[rand(3)]
  end
  def play
    @computer.choice = random
    assignments = { @player_1 => @player_1.choice, @computer => @computer.choice }
    assign_winner(assignments)
  end
  def assign_winner(assignments)
    choices = assignments.values.sort
    if choices == ["Paper", "Rock"]
      @winner = assignments.key("Paper")
    elsif choices == ["Rock", "Scissors"]
      @winner = assignments.key("Rock")
    elsif choices == ["Paper", "Scissors"]
      @winner = assignments.key("Scissors")
    end
  end
  def self.new_game(name1, name2, player_class_1 = Player, player_class_2 = Player)
    @game = Game.new(name1, name2, player_class_1 = Player, player_class_2 = Player)
  end
  def self.instance
    @game
  end
end
