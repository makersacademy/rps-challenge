class Player
  STARTING_COUNTS = 0

  attr_reader :name, :win_count, :lose_count

  def initialize(input_name)
    @name = input_name
    @win_count = STARTING_COUNTS
    @lose_count = STARTING_COUNTS
  end

end
