class Player
  STARTING_COUNTS = 0

  attr_reader :name, :win, :lose

  def initialize(input_name)
    @name = input_name
    @win = STARTING_COUNTS
    @lose = STARTING_COUNTS
  end

end
