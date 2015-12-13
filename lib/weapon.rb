class Weapon

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def judge(p1_choice, p2_choice)
    return :Draw if draw(p1_choice, p2_choice)
    return :Win if beats(p1_choice, p2_choice)
    return :Lost if !beats(p1_choice, p2_choice)
  end

  def draw(p1_choice, p2_choice)
    p1_choice == p2_choice
  end

  def beats(p1_choice, p2_choice)
    RULES[p1_choice] == p2_choice
  end
end


j = Weapon.new
p j.judge(:rock, :rock)
