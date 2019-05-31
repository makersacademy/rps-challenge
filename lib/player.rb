class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def store_choice(choice)
    @choice = choice
  end

  def wipe_choice
    @choice = nil
  end


end
