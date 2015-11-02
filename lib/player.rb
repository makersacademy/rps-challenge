class Player

  attr_reader :choice, :name

  def set_name(name)
    @name = name
  end

  def set_choice(choice = nil)
    choice ||= set_random_choice
    @choice = choice.to_sym
  end

  def reset
    @choice = nil
  end

  private

  def set_random_choice
    rand_num = Kernel.rand
    rand_num < 0.333 ? :rock : ( rand_num < 0.666 ? :paper : :scissors )
  end
end
