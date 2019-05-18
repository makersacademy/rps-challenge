class AI
  attr_accessor :weapon

  def select_weapon
    @weapon = [:rock, :paper, :scissors].sample
  end

end
