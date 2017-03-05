require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :player, :weapons

  def initialize(player)
    @player = player
    @weapons = ['Rock', 'Paper', 'Scissors']
  end

  def play(player_weapon)
    @player_selection = player_weapon
    @comp_selection = random_weapon_selection
    declare_winner
  end

  def random_weapon_selection
    @weapons.sample
  end

  def declare_winner
    case [@player_selection, @comp_selection]
    when ['Rock', 'Rock'], ['Paper', 'Paper'], ['Scissors', 'Scissors']
      draw
    when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
      win
    when ['Rock', 'Paper'], ['Scissors', 'Rock'], ['Paper', 'Scissors']
      lose
    end
  end

  def draw
    puts "It's a draw - play again!"
  end

  def win
    @player.win(1)
    puts "You win!"
  end

  def lose
    puts "You lose!"
  end
    # p computer
    # p @player.weapon.win
    # p @player.weapon.win.include? computer

end
