class Game
  attr_reader :player, :computer, :dual,  :GAME_COMBO

  attr_writer :dual

  def initialize(player, computer)
    @player = player
    @computer = computer
    @dual = [player_choice, computer_choice]
  end

  GAME_COMBO = {[:rock, :rock] => "It's a tie",
               [:rock, :paper] => "You lose",
               [:rock, :scissor] => "You win",
               [:paper, :rock] => "You win",
               [:paper, :paper] => "It's a tie",
               [:paper, :scissor] => "You lose",
               [:scissor, :rock] => "You lose",
               [:scissor, :paper] => "You win",
               [:scissor, :scissor] => "It's a tie"}

  def player_name
    @player.name
  end

  def player_choice
    @player.choice
  end

  def computer_choice
    @computer.choice
  end

  def dual
    @dual << player_choice << computer_choice
  end

  def result
    GAME_COMBO[dual]
  end
end
