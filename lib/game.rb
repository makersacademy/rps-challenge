class Game
  attr_reader :player_one, :player_two, :player_one_choice, :player_two_choice, :history

  CHOICES = {
      paper: 0,
      scissors: 1,
      rock: 2
  }

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two

    @player_one_choice = nil
    @player_two_choice = nil
  end

  def player_one_chooses(move)
    @player_one_choice = move
  end

  def player_two_chooses(move)
    @player_two_choice = move
  end

  def winner
    return nil if @player_one_choice == nil or @player_two_choice == nil
    result = CHOICES[@player_one_choice] - CHOICES[@player_two_choice]

    if (@player_one_choice == :rock and @player_two_choice == :paper) or (@player_two_choice == :rock and @player_one_choice == :paper)
      result *= -1
    end

    if result == 0
      "Draw"
    elsif result < 0
      @player_two
    else
      @player_one
    end
  end
end