class Computer

  attr_reader :attack

  def take_turn
    @attack = options
  end

  private

  def options
    [:rock, :paper, :scissors].sample
  end

end
