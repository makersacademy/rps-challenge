class Game

  attr_reader :player, :computer

  WIN = [
    ["Rock", "Scissors"],
    ["Rock", "Lizard"],
    ["Paper", "Rock"],
    ["Paper", "Spock"],
    ["Scissors", "Paper"],
    ["Scissors", "Lizard"],
    ["Spock", "Scissors"],
    ["Spock", "Rock"],
    ["Lizard", "Paper"],
    ["Lizard", "Spock"]
  ]

  DRAW = [
    ["Rock", "Rock"],
    ["Paper", "Paper"],
    ["Scissors", "Scissors"],
    ["Spock", "Spock"],
    ["Lizard", "Lizard"]
  ]

  def initialize(player, computer)
    @player = player
    @computer = computer
    @game_array = []
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def selections(player_choice, computer_choice)
    @game_array << player_choice
    @game_array << computer_choice
  end

  def player_wins?
    WIN.include?(@game_array)
  end

  def draw?
    DRAW.include?(@game_array)
  end

  def check_winner
    return "Nobody" if draw?
    return @player.name if player_wins?
    return @computer.name
  end

end
