class Game
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  attr_reader :winner

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def decide_winner(p1_choice, p2_choice)
    case [p1_choice, p2_choice]
    when ["Rock", "Scissors"],
         ["Scissors", "Paper"],
         ["Paper", "Rock"]
      return player_1.name
    when ["Scissors", "Rock"],
         ["Paper", "Scissors"],
         ["Rock", "Paper"]
      return player_2.name
    else
      "Draw"
    end
  end

  def assign_winner(p1_choice, p2_choice)
    @winner = decide_winner(p1_choice, p2_choice)
  end
end
