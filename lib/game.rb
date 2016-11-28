class Game

  def computer_attack_type
    if random_number == 1
      'Rock'
    elsif random_number == 2
      'Paper'
    else
      'Scissors'
    end
  end

  def random_number
    rand(1..3)
  end

end
