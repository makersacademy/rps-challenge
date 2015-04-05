class Player
  attr_reader :name
  def initialize(name = 'Player1')
    @name = name
  end

  def hand_value(choice)
    # 1) attr_writer :hand_value didn't work at first (before if-statement)
    # need to ask teachers why
    # 2) anyway to write that if-statement in a shorter way?
    # For Rubocop purposes, I make a ch variable
    ch = choice.downcase
    if ch != 'rock' && ch != 'paper' && ch != 'scissors'
      fail 'This is not a RPS hand!'
    else
      @hand_value = choice
    end
  end
end
