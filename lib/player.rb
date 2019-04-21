class Player
  attr_reader :name, :choice, :id

  def initialize(name)
    @name = name
  end

  def assigned_id(id)
    @id = id
  end

  def make_decision(chosen)
    @choice = chosen
  end

end
