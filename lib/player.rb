class Player
  attr_reader :name, :choice, :ai
  def initialize(name, ai = false)
    @name = name
    @ai = ai
  end

  def make_choice choice
    @choice = choice
  end
end
