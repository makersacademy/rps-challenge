class Computer
  CHOICES = [:rock,:paper,:scissors]
  WINS = {rock: :scissors,
          paper: :rock,
          scissors: :paper}

  def result(player_choice)
    return :draw if @choice == player_choice.to_sym
    return :win if WINS[@choice] == player_choice.to_sym
    :lose
  end

  def choice
    @choice =  CHOICES[rand(0..2)]
  end
end
