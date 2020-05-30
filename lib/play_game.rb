class PlayGame 

  RPSARRAY = ['Rock', 'Paper', 'Scissors']

  attr_reader :player_choice

  def initialize(choice)
    @player_choice = choice
  end
end