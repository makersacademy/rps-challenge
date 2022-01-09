class Game
  WEAPONS = [:rock, :paper, :scissors]
  
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }


  def initialize(choices = WEAPONS)
    @choices = choices
  end

  def make_choice
    @choices.sample
  end

  def give_result(player_choice, computer_choice)
    return :draw if player_choice == computer_choice
    return :win if RULES[player_choice.to_sym] == computer_choice.to_sym
    :loss
  end
end