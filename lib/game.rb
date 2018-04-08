class Game
  attr_reader :players


  def initialize

    @players = []

  end

  def who_wins(player, player2)
    if player.choice == 'Rock' && player2.choice == 'Paper'
      return player2.name
    elsif player.choice == 'Paper' && player2.choice == 'Rock'
      return player.name
    elsif player.choice = 'Scissors' && player2.choice == 'Paper'
      return player.name
    elsif player.choice == 'Paper' && player2.choice == 'Scissors'
      return player2.name
    elsif player.choice == 'Rock' && player2.choice == 'Scissors'
      return player2.name
    elsif player.choice == 'Scissors' && player2.choice == 'Rock'
      return player.name
    end
  end
end
