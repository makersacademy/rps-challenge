class Computer

  attr_reader :weapon

  def choose_weapon
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

end
