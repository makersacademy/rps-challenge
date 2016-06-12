class ComputerPlayer
  attr_reader :name, :hand

  def initialize
    @name = 'Computer'
    @hand = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'].sample
  end
end
