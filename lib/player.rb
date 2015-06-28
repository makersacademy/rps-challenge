class Player

  attr_reader :player_choice
  def initialize
    @options = [:rock, :paper, :scissors]
  end


  def player_choice choice
    fail "Not a valid selection!" if !@options.include?(choice.downcase.to_sym)
    @player_choice = choice.to_sym
  end
end

