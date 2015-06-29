class SignGame
  def initialize signs={}
    @signs = signs
  end

  def choose player_choice
    @signs[player_choice.to_sym].versus random_sign
  end

  def random_sign
    @signs.values.sample
  end
end
