class PlayGame 

  RPSARRAY = ['Rock', 'Paper', 'Scissors']

  attr_reader :player_choice, :computer_choice

  def initialize(choice)
    @player_choice = choice
    @computer_choice = RPSARRAY.sample 
  end

  def play 
    if @player_choice == 'Paper' && @computer_choice == 'Rock'
      true
    elsif @player_choice == 'Paper' && @computer_choice == 'Scissors'
      false
    elsif @player_choice == 'Rock' && @computer_choice == 'Scissors'
      true
    elsif @player_choice == 'Rock' && @computer_choice == 'Paper'
      false
    elsif @player_choice == 'Scissors' && @computer_choice == 'Paper'
      true
    elsif @player_choice == 'Scissors' && @computer_choice == 'Rock'
      false  
    else
      'Draw'
    end
  end

end