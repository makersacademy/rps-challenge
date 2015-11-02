class Game
  attr_reader :player_choice, :computer_choice, :dual, :GAME_COMBO

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @dual = [@player_choice, @computer_choice]
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

  def result
    GAME_COMBO[@dual]
  end
end
