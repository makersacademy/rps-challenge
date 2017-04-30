require_relative './result.rb'

class DisplayResult
  attr_reader :winner

  def initialize(winner, player)
    @winner = winner
    @player = player
  end

  case @winner
  when :player
    @winner_name = @player
  when :computer
    @winner_name = "Computer"
  when :draw
    @winner_name = "None. It's a draw!"
  end

end
=begin
"The Paper wraps the Rock. You lose :("
 "The Rock breaks the Scissors. You win. Or better, you rock! :)"
 "The Paper wraps the Rock. You win :)"
 "The Scissors cut the Paper. You lose :("
 "The Rock breaks the Scissors. You lose :("
 "The Scissors cut the Paper. You win :)"
 =end
