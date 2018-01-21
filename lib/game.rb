class Game

  attr_reader :player, :computer

  WIN_MOVES = [
    ["Rock", "Scissors"],
    ["Paper", "Rock"],
    ["Scissors", "Paper"]
  ]

  DRAW_MOVES = [
    ["Rock", "Rock"],
    ["Paper", "Paper"],
    ["Scissors", "Scissors"]
  ]

  def initialize(player, computer)
    @player = player
    @computer = computer
    @game_array = []
  end

  def self.start(player, computer)
  @game = Game.new(player, computer)
end

  def self.instance
    @game
  end

  def moves(player_option, computer_option)
  @game_array << player_option
  @game_array << computer_option
  end

  def result
  if WIN_MOVES.include?(@game_array)
    @player.name
  elsif DRAW_MOVES.include?(@game_array)
    "No one"
  else
    @computer.name
  end
 end

end
