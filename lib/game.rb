require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :player1, :player2, :weapons, :result

  def initialize(player1, player2)
    @player1, @player2 = player1, player2
    # @weapons = ['Rock', 'Paper', 'Scissors']
  end

  def play(player_one_weapon, player_two_weapon)
    @player_one_weapon = player_one_weapon
    @player_two_weapon = player_two_weapon
    declare_winner(player_one_weapon, player_two_weapon)
  end

  # def random_weapon_selection
  #   @weapons.sample
  # end

  def declare_winner(weapon1, weapon2)
    case [weapon1, weapon2]
    when ['Rock', 'Rock'], ['Paper', 'Paper'], ['Scissors', 'Scissors']
      draw
    when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
      win
    when ['Rock', 'Paper'], ['Scissors', 'Rock'], ['Paper', 'Scissors']
      lose
    end
  end

  def draw
    @result = "It's a draw - play again!"
  end

  def win
    @player1.win(1)
    @player2.lose(1)
    @result = "Player 1 Wins!"
  end

  def lose
    @player2.win(1)
    @player1.lose(1)
    @result = "Player 2 Wins!"
  end
    # p computer
    # p @player.weapon.win
    # p @player.weapon.win.include? computer

end
