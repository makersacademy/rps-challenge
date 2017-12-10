class Player
  attr_reader :name, :ai
  attr_accessor :choice
  def initialize(name, ai = false)
    @name = name
    @ai = ai
  end

  def make_choice choice
    @choice = choice
  end
end
