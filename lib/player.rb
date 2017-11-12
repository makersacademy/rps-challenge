class Player

  attr_reader    :name, :choice
  attr_accessor  :wins

  def initialize(name)
    @name = name
    @choice = {}
    @wins = 0
  end

  def receive_choice(choice)
      @choice = choice
  end

end
