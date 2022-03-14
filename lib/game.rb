class Game

  def computer_pick
    number = rand(1..3)
    if number == 1
      'Rock'
    elsif number == 2
      'Paper'
    elsif number == 3
      'Scisors'
    end
  end

  def decision (player_pick, computer_pick)
    if player_pick == computer_pick
      'its a tie!'
    elsif player_pick == 'Rock' && computer_pick == 'Paper'
      'you lost!'
    elsif player_pick == 'Rock' && computer_pick == 'Scisors'
      'you won!'
    elsif player_pick == 'Paper' && computer_pick == 'Rock'
      'you won!'
    elsif player_pick == 'Paper' && computer_pick == 'Scisors'
      'you lost!'
    elsif player_pick == 'Scisors' && computer_pick == 'Rock'
      'you lost!'
    elsif player_pick == 'Scisors' && computer_pick == 'Paper'
      'you won!'
    end
  end
end