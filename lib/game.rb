class Game

  def initialize(player_choice)
    @player_choice = player_choice
    @comp_choice = ['Rock','Paper','Scissors'].sample
  end
end
