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
