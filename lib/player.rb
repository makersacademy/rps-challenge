class Player
  attr_reader :name
  attr_accessor :choice
  def initialize(name, choice = nil)
    @name = name
    @choice = choice
    @win = 0
  end

  def update_choice(choice)
    @choice = choice
  end
end
