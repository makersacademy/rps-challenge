class Game

  RULES = { paper: :rock,
          scissors: :paper,
          rock: :scissors }

  def initialize(computer_choice, player_choice)
    @computer_choice = computer_choice
    @player_choice = player_choice.to_sym
  end

  def result
    
  end
end
