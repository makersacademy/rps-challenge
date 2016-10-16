class Computer

  MOVES = [:rock, :paper, :scissors, :lizard, :spock]

  attr_reader :move_choice

  def initialize
   @move_choice = nil
  end

  def computer_select
   @move_choice = random_selector
  end

  private

  def random_selector
   MOVES.sample
  end

end
