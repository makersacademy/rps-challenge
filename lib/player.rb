class Player
  attr_reader :name, :choice, :old_name

  def initialize(name, choice)
    @name = name
    @choice = choice.to_sym
    @old_name = @name
  end

end
