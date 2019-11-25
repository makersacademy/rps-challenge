class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def play
    combinations = {
      ["Rock", "Scissors"] => players.first,
      ["Paper", "Rock"] => players.first,
      ["Scissors", "Paper"] => players.first,
      ["Rock", "Rock"] => "draw",
      ["Paper", "Paper"] => "draw",
      ["Scissors", "Scissors"] => "draw",
      ["Scissors", "Rock"] => players.last,
      ["Rock", "Paper"] => players.last,
      ["Paper", "Scissors"] => players.last
    }
    combinations[[players.first.move, players.last.move]]
  end

  def draw?
    play == "draw"
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end
end
