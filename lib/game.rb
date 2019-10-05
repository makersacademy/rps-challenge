class Game

  def initialize
    @win = [{ player: 'Rock', computer: 'Scissors' },
            { player: 'Scissors', computer: 'Paper' },
            { player: 'Paper', computer: 'Rock' }
           ]
  end

  def match(player_choice, computer_choice)
    return 'This is a tie!' if player_choice == computer_choice

    @win.each do |i|
      return 'You win!' if player_choice == i[:player] && computer_choice == i[:computer]
    end

    'You loose!'
  end
end
