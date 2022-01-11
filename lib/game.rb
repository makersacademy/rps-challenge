class Game
    def result(player_weapon, computer_weapon)
        return 'You Win The Game!' if player_weapon == 'Rock' && computer_weapon == 'Scissors'
        return 'You Win The Game!' if player_weapon == 'Paper' && computer_weapon == 'Rock'
        return 'You Win The Game!' if player_weapon == 'Scissors' && computer_weapon == 'Paper'
        return "It's a Draw!" if player_weapon == computer_weapon
        'You Lose The Game!'
  end
    
end
