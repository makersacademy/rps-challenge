class Computer

  def name
    "the Computer"
  end

  def weapon
    @weapon ||= :no_weapon
  end

  def choose_weapon
    @weapon = [:ROCK,:PAPER,:SCISSORS].sample
  end


end
