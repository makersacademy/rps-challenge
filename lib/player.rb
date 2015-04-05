class Player
  attr_reader :name
  def initialize(name = 'Player1')
    @name = name
  end

  def hand_value(choice)
    # attr_writer :hand_value didn't work at first (before if-statement)
    # need to ask teachers why
    @hand_value = choice
  end
end
