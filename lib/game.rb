class Game

  attr_reader :player, :computer

  WIN = [
    ["Rock", "Scissors"],
    ["Paper", "Rock"],
    ["Scissors", "Paper"]
  ]

  DRAW = [
    ["Rock", "Rock"],
    ["Paper", "Paper"],
    ["Scissors", "Scissors"]
  ]

  LOSE = [
    ["Rock", "Paper"],
    ["Paper", "Scissors"],
    ["Scissors", "Rock"]
  ]

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def selections(player_choice, computer_choice)
    @game_array = [player_choice, computer_choice]
  end

  def player_wins?
    WIN.include?(@game_array)
  end

  def draw?
    DRAW.include?(@game_array)
  end

  def lose?
    LOSE.include?(@game_array)
  end

  def check_winner
    return @player.name if player_wins?
    return "Nobody" if draw?
    return @computer.name if lose?
  end

end
