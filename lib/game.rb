class Game 
  
  def initialize(player1)
    @player1 = player1
    @choice_arr = ['Rock', 'Paper', 'Scissors']
  end

  def computer_pick
    @comp_pick = @choice_arr.sample
  end
end