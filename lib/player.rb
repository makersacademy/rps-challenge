class Player
  attr_reader :name, :choice

  def initialize(name = 'Player', choice = nil)
    @name = name
    @choice = choice
  end

  def select_option(option)
    @choice = option
  end

  def reset_choice
    @choice = nil
  end

end
