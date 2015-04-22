class Game
  attr_reader :combinations, :random

  def initialize
    @combinations = { rock: :scissors, paper: :rock, scissors: :paper }
    @randomness = combinations.keys
    @player1 = []
    @player2 = []
  end

  def add_player1(player)
    @player1 << player
  end

  def add_player2(player)
    @player2 << player
  end

  def players
    @player1 != nil && @player2 != nil
  end

  def random
    randomness.sample
  end

  def result(player1_choice, player2_choice)
    if player2_choice == combinations[player1_choice]
      result_value = "Win!"
    elsif player1_choice == combinations[player2_choice]
      result_value = "Lost!"
    elsif player1_choice == player2_choice
      result_value = "Draw!"
    end
    result_value
  end
end