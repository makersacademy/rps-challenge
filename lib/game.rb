class Game 
  
  def initialize(player1)
    @player1 = player1
    @choice_arr = ['Rock', 'Paper', 'Scissors']
  end

  def computer_pick
    @comp_pick = @choice_arr.sample
  end

  def win_lose
    if @player1.choice == @comp_pick
      'YOU DREW'
    elsif
      @player1.choice == 'Rock' && @comp_pick == 'Paper'
      'YOU LOSE'
    elsif
      @player1.choice == 'Rock' && @comp_pick == 'Scissors'
      'YOU WIN'
    elsif
      @player1.choice == 'Paper' && @comp_pick == 'Scissors'
      'YOU LOSE'
    elsif
      @player1.choice == 'Paper' && @comp_pick == 'Rock'
      'YOU WIN'
    elsif
      @player1.choice == 'Scissors' && @comp_pick == 'Rock'
      'YOU LOSE'
    elsif
      @player1.choice == 'Scissors' && @comp_pick == 'Paper'
      'YOU WIN'        
    end
  end
end
