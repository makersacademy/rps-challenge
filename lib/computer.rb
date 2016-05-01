class Computer

  def take_turn
    @attack = options
  end

  def attack
    @attack
  end

  private

  def options
    [:rock, :paper, :scissors].sample
  end

end
