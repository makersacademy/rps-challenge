class Game

  def initialize(player_choice)
    @player_choice = player_choice
    @comp_choice = ['Rock','Paper','Scissors'].sample
  end

  attr_reader :player_choice, :comp_choice

  def draw?
    @player_choice == @comp_choice
  end

end
