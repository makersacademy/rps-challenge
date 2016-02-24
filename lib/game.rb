require_relative 'computer'

class Game

  attr_reader :player, :computer

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  def initialize(player_klass, computer_klass = Computer.new)
    @player = player_klass
    @computer = computer_klass
    @wins = [['Scissors', 'Paper'],
    ['Paper', 'Rock'],
    ['Rock', 'Scissors']]
  end

  def game_winner
    check_winner(choices)
  end

  private

  def choices
    @choices = [@computer.weapon, @player.choice]
  end

  def check_winner(choices)
    return "It's a draw!" if @computer.weapon == @player.choice
    return "Computer wins!" if @wins.include?(@choices)
    return "You win!"
  end

end
