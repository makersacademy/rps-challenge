class Computer

  def weapon
    @weapon ||= random_weapon
  end

  private

  def random_weapon
    @weapon = [:rock, :paper, :scissors].sample
  end

end
