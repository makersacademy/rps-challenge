require 'human'
require 'computer'

class Game
  def initialize player_name, player_class = Human, computer_class = Computer
    @player = player_class.new player_name
    @computer = computer_class.new
  end
end
