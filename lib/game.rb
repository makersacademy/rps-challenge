class Game

  attr_reader :combinations, :randomness, :name

  def initialize
    @combinations = { rock: :scissors, paper: :rock, scissors: :paper }
    @randomness = combinations.keys
    @player_one = nil
    @name = name
  end

  def random
    randomness.sample
  end

  def add_player(player)
    @player_one = player
  end

  def result(player_choice, opponent_choice)
    if opponent_choice == combinations[player_choice]
      value = "Win!"
    elsif player_choice == combinations[opponent_choice]
      value = "Lost!"
    elsif player_choice == opponent_choice
      value = "Draw!"
    end
    return value
  end
end