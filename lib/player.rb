class Player

  attr_reader  :name, :choice

  def initialize(name)
    @name = name
    @choice = {}
  end

  def receive_choice(choice)
      @choice = choice
  end

end
