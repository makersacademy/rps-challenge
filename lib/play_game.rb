class PlayGame 

  RPSARRAY = ['Rock', 'Paper', 'Scissors']

  attr_reader :player_choice, :computer_choice

  def initialize(choice)
    @player_choice = choice
    @computer_choice = RPSARRAY.sample
  end
  
end