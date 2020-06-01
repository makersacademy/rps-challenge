class PlayGame 

  RPSARRAY = ['Rock', 'Paper', 'Scissors']

  attr_reader :player_choice, :computer_choice

  def initialize(choice)
    @player_choice = choice
    @computer_choice = RPSARRAY.sample 
  end

  def play 
    if @player_choice == 'Paper' 
      paper
    elsif @player_choice == 'Rock' 
      rock
    elsif @player_choice == 'Scissors'
      scissors
    end
  end

  private

  def paper
    if @computer_choice == 'Rock'
      true
    elsif @computer_choice == 'Scissors'
      false 
    else
      'Draw'
    end
  end

  def rock
    if @computer_choice == 'Scissors'
      true
    elsif @computer_choice == 'Paper'
      false 
    else
      'Draw'
    end
  end

  def scissors
    if @computer_choice == 'Paper'
      true
    elsif @computer_choice == 'Rock'
      false 
    else
      'Draw'
    end
  end
end