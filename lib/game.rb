class Game
  CHOICES = [:rock, :paper, :scissors]

  WINS = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize
    
  end

  def self.result(player1_choice, player2_choice)
    p player1_choice.to_sym
    p player2_choice.to_sym
    
    return :draw if player1_choice.to_sym == player2_choice.to_sym
    WINS[player1_choice.to_sym] == player2_choice.to_sym ? :win : :lose
  end
end