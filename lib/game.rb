# require_relative 'computer'
# require_relative 'player'

class Game
      attr_reader :player, :computer

  WIN = [
    ["Rock", "Scissors"],
    ["Paper", "Rock"],
    ["Scissors", "Paper"]
    ]

  DRAW =  [
    ["Rock", "Rock"],
    ["Paper", "Paper"],
    ["Scissors", "Scissors"]
    ]

  def initialize(player, computer)
    @player = player
    @computer = computer
    @games_array = []
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  #singleton is a design pattern where a single instance of a class is created
  #and used by any other classes that need access
  def self.instance
    @game
  end

  def selections(player_choice, computer_choice)
    @games_array << player_choice
    @games_array << computer_choice
  end

  def wins?
    WIN.include?(@games_array)
  end

  def draw?
    DRAW.include?(@games_array)
  end

  def winner
    return "No one" if draw?
    return @player.name if wins?
    return @computer.name
  end

end
