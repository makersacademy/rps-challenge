class Game
  attr_reader :player_1, :player_2

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def ready?
    player_1.chosen? && player_2.chosen?
  end

  def acceptable_choice? choice
    fail "You can only choose rock, paper or scissors." unless choice == (choices)
  end

  def choices
    "Rock" || "rock" || "Paper" || "paper" || "Scissors" || "scissors"
  end

  def evaluate(player_1_choice, player_2_choice)
    @r = "Rock" || "rock"
    @p = "Paper" || "paper"
    @s = "Scissors" || "scissors"
    # R if R, S || S, R
    # S if S, P || P, S
    # P if P, R || R, P
    { "r, s": "r", "s, r": "r", "s, p": "s", "p, s": "s", "r, p": "p", "p, r": "p" }

  #   player_1_choice if player_1_choice > player_2_choice
  #   player_2_choice if player_1_choice < player_2_choice
  end

  # def result
  #   puts "It's a draw." if player_1_choice == player_2_choice
  #   puts "Player 1 wins!" if player_1_choice > player_2_choice
  #   puts "Player 2 wins!" if player_1_choice < player_2_choice
  # end
end
