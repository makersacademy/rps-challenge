class Computer
  attr_reader :name, :choice

  def initialize
    @name = 'Skynet'
  end

  def player_choice
    @choice = ['Rock', 'Scissors', 'Paper', 'Lizard', 'Spock'].sample
  end
end
