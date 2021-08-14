class Opponent

  attr_reader :name, :weapon

  def initialize
    @name = "HAL 9000"
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

end
