class Player

  attr_reader :name, :choice

  def initialize(name = "Mystery Person")
    @name = name
  end

  def set_choice(choice)
    @choice = choice
  end

end
