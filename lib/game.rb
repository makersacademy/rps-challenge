class Game

  attr_reader :player1, :player2, :winner, :draw, :outcome

  def initialize p1, p2
    @player1 = p1
    @player2 = p2
  end

  MESSAGES = [
    "Rock smashes scissors.",
    "Rock crushes lizard.",
    "Paper wraps rock.",
    "Paper disproves Spock.",
    "Scissors cuts up paper.",
    "Scissors decapitates lizard.",
    "Lizard eats paper.",
    "Lizard poisons Spock.",
    "Spock vaporizes rock.",
    "Spock breaks scissors."
  ]

  def calculate_winner
    @draw = true if player1.choice == player2.choice
    case player1.choice
    when :rock
      (@winner = player1) && (@outcome = MESSAGES[0]) if player2.choice == :scissors
      (@winner = player1) && (@outcome = MESSAGES[1]) if player2.choice == :lizard
      (@winner = player2) && (@outcome = MESSAGES[8]) if player2.choice == :Spock
      (@winner = player2) && (@outcome = MESSAGES[2]) if player2.choice == :paper
    when :scissors
      (@winner = player1) && (@outcome = MESSAGES[4]) if player2.choice == :paper
      (@winner = player1) && (@outcome = MESSAGES[5]) if player2.choice == :lizard
      (@winner = player2) && (@outcome = MESSAGES[0]) if player2.choice == :rock
      (@winner = player2) && (@outcome = MESSAGES[9]) if player2.choice == :Spock
    when :paper
      (@winner = player1) && (@outcome = MESSAGES[3]) if player2.choice == :Spock
      (@winner = player1) && (@outcome = MESSAGES[2]) if player2.choice == :rock
      (@winner = player2) && (@outcome = MESSAGES[6]) if player2.choice == :lizard
      (@winner = player2) && (@outcome = MESSAGES[4]) if player2.choice == :scissors
    when :lizard
      (@winner = player1) && (@outcome = MESSAGES[7]) if player2.choice == :Spock
      (@winner = player1) && (@outcome = MESSAGES[6]) if player2.choice == :paper
      (@winner = player2) && (@outcome = MESSAGES[5]) if player2.choice == :scissors
      (@winner = player2) && (@outcome = MESSAGES[1]) if player2.choice == :rock
    when :Spock
      (@winner = player1) && (@outcome = MESSAGES[9]) if player2.choice == :scissors
      (@winner = player1) && (@outcome = MESSAGES[8]) if player2.choice == :rock
      (@winner = player2) && (@outcome = MESSAGES[3]) if player2.choice == :paper
      (@winner = player2) && (@outcome = MESSAGES[7]) if player2.choice == :lizard
    end
  end
end
