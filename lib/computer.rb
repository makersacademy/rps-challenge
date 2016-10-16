class Computer

  MOVES = [:rock, :paper, :scissors, :lizard, :spock]

  attr_reader :move_choice, :name

  def initialize(name = 'Sheldon')
   @move_choice = nil
   @name = name
  end

  def computer_select
   @move_choice = random_selector
  end

  private

  def random_selector
   MOVES.sample
  end

end
