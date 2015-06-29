class Player

  attr_reader :player_choice
  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end


  def player_choice choice
    fail "Not a valid selection!" if !@options.include?(choice.downcase)
    @player_choice = choice
  end
end

