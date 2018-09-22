class Computer
  attr_reader :name

  def initialize
    @name = 'Skynet'
  end

  def player_choice
    ['Rock', 'Scissors', 'Paper', 'Lizard', 'Spock'].sample
  end
end
