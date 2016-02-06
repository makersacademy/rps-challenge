class Game

  attr_reader :player1, :player2, :winner, :draw, :outcome

  def initialize p1, p2
    @player1 = p1
    @player2 = p2
  end

  Messages = [
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
        winner = player1 && @outcome = Messages[0] if player2.choice == :scissors
        winner = player1 && @outcome = Messages[1] if player2.choice == :lizard
        winner = player2 && @outcome = Messages[8] if player2.choice == :spock
        winner = player2 && @outcome = Messages[2] if player2.choice == :paper
      when :scissors
        winner = player1 && @outcome = Messages[4] if player2.choice == :paper
        winner = player1 && @outcome = Messages[5] if player2.choice == :lizard
        winner = player2 && @outcome = Messages[0] if player2.choice == :rock
        winner = player2 && @outcome = Messages[9] if player2.choice == :spock
      when :paper
        winner = player1 && @outcome = Messages[3] if player2.choice == :spock
        winner = player1 && @outcome = Messages[2] if player2.choice == :rock
        winner = player2 && @outcome = Messages[6] if player2.choice == :lizard
        winner = player2 && @outcome = Messages[4] if player2.choice == :scissors
      when :lizard
        winner = player1 && @outcome = Messages[7] if player2.choice == :spock
        winner = player1 && @outcome = Messages[6] if player2.choice == :paper
        winner = player2 && @outcome = Messages[5] if player2.choice == :scissors
        winner = player2 && @outcome = Messages[1] if player2.choice == :rock
      when :spock
        winner = player1 && @outcome = Messages[9] if player2.choice == :scissors
        winner = player1 && @outcome = Messages[8] if player2.choice == :rock
        winner = player2 && @outcome = Messages[3] if player2.choice == :paper
        winner = player2 && @outcome = Messages[7] if player2.choice == :lizard
    end
  end
end
