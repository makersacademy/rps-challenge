require 'human'
require 'computer'

class Game
  def initialize player_name, player_class = Human, computer_class = Computer
    @player = player_class.new player_name
    @computer = computer_class.new
  end
  def turn human_selection
    computer_selection = @computer.selection
    if computer_selection == 'rock'
      if human_selection == 'rock'
        player.update_score 'draw'
      elsif human_selection == 'paper'
        player.update_score 'win'
      elsif human_selection == 'scissors'
        player.update_score 'lose'
      end
    end
    if computer_selection == 'paper'
      if human_selection == 'rock'
        player.update_score 'lose'
      elsif human_selection == 'paper'
        player.update_score 'draw'
      elsif human_selection == 'scissors'
        player.update_score 'win'
      end
    end
    if computer_selection == 'scissors'
      if human_selection == 'rock'
        player.update_score 'win'
      elsif human_selection == 'paper'
        player.update_score 'lose'
      elsif human_selection == 'scissors'
        player.update_score 'draw'
      end
    end
  end

  private
  attr_reader :player
end
