
class Player
  DEFAULT_RESULT = "Win"
  attr_reader :name, :result

  def initialize(name, result = DEFAULT_RESULT)
    @name = name
    @result = result
  end
