class Game
  attr_reader :player_1, :player_2

  RULES = { "Rock" => ["Scissors", "Lizard"],
            "Paper" => ["Rock", "Spock"],
            "Scissors" => ["Paper", "Lizard"],
            "Spock" => ["Scissors", "Rock"],
            "Lizard" => ["Spock", "Paper"] }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def winner
    if RULES[player_1.option].include?(player_2.option)
      player_1
    elsif RULES[player_2.option].include?(player_1.option)
      player_2
    end
  end    

  def loser
    winner == player_1 ? player_2 : player_1
  end
end
