class Game

  attr_reader :name

  def initialize
    @name = "AUTOBOT"
  end

  def computer_move
    [:Rock, :Paper, :Scissors].sample
  end

end
