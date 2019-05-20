class AI
  attr_reader :weapon
  
  def weapon_choice
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

end
