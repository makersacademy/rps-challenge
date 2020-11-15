require_relative 'human'
require_relative 'computer'

class Game
  def initialize (player1 = Human.new(name), player2 = Computer.new)
    @player1 = player1
    @player2 = player2
  end
end
