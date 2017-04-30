require_relative './result.rb'

class DisplayResult
  attr_reader :winner

  def initialize(winner, player)
    @winner = winner
    @player = player
  end

  def winner_name
    case @winner
    when :player
      @player
    when :computer
      "Computer"
    when :draw
      "None. It's a draw"
    end
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
