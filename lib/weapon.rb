class Weapon

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def initialize(p1_choice, p2_choice)
      @p1_choice = p1_choice.to_sym
      @p2_choice = p2_choice.to_sym
  end

  def judge
    return :Draw if draw?
    return :Win if beats?
    return :Lost if !beats?
  end

  def draw?
    @p1_choice == @p2_choice
  end

  def beats?
    RULES[@p1_choice] == @p2_choice
  end
end
