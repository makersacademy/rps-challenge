class ComputerPlayer
  attr_reader :hand

  def initialize
    @hand = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'].sample
  end
end
