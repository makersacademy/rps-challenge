require_relative 'computer'

class Game

  attr_reader :player, :computer

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @wins = [['Scissors', 'Paper'],
             ['Paper', 'Rock'],
             ['Rock', 'Scissors']]
  end

  def check_winner
    result
    if @computer.weapon == @player.choice
      "It's a draw!"
    elsif @wins.include?([@computer.weapon, @player.choice])
      "Computer wins!"
    else
      "You win!"
    end
  end

  private

  def result
    @result = [@computer.weapon, @player.choice]
  end

end
