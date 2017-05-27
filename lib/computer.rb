
class Computer

  attr_accessor :name, :score, :computer_moves

  def initialize
    @name = 'RosiePoSie'
    @score = 0
    @computer_moves = ['scissors', 'paper', 'rock']
  end

  def win_round
    @score += 1
  end
end
