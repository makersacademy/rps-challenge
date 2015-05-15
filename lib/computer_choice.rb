class Game

  def computer_choose
    x = rand(2)
    if x == 0
      return 'Rock'
    elsif x == 1
      return 'Scissors'
    else
      return 'Paper'
    end
  end

end